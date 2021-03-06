#include "Plugin/TLMPlugin.h"
#include "Logging/TLMErrorLog.h"


// V = M * V
void TransformMV(double A[9], double V[3]) {
    double XX = A[0]*V[0];
    XX += A[1]*V[1];
    XX += A[2]*V[2];

    double YY = A[3]*V[0];
    YY += A[4]*V[1];
    YY += A[5]*V[2];

    double ZZ = A[6]*V[0];
    ZZ += A[7]*V[1];
    ZZ += A[8]*V[2];

    V[0] = XX;
    V[1] = YY;
    V[2] = ZZ;
}	


// V = V * M
void TransformVM(double V[3], double A[9]) {
    double XX = V[0]*A[0];
    XX += V[1]*A[3];
    XX += V[2]*A[6];

    double YY = V[0]*A[1];
    YY += V[1]*A[4];
    YY += V[2]*A[7];
    
    double ZZ = V[0]*A[2];
    ZZ += V[1]*A[5];
    ZZ += V[2]*A[8];

    V[0] = XX;
    V[1] = YY;
    V[2] = ZZ;
}	


// The static GetForce function is a pure function that uses
// parameters as defined for the GetForce above 
void  TLMPlugin::GetForce3D(double position[],
                            double orientation[],
                            double speed[],
                            double ang_speed[],
                            TLMTimeData3D& Data,
                            TLMConnectionParams& Params,
                            double* force) {

    if(Data.time == TIME_WITHOUT_DATA) {
        //Do nothing, default value should be initial value
        return;
    }
    else {
        double f[3] = {Data.GenForce[0], Data.GenForce[1], Data.GenForce[2]};
        double m[3] = {Data.GenForce[3], Data.GenForce[4], Data.GenForce[5]};

        // Transform into local inertial system
        TransformMV(Params.cX_A_cG, f);
        TransformMV(Params.cX_A_cG, m); // BUG? correct translation of moment?

        // The reaction force is (ReceivedWave - Impedance * Velocity)
        for(int i = 0; i < 3; i++) {
            force[i] = f[i] -  Params.Zf * speed[i];
            force[i+3] = m[i] -  Params.Zfr * ang_speed[i];
        }
    }
}


void TLMPlugin::GetValueSignal(TLMTimeDataSignal &Data,
                               TLMConnectionParams &Params,
                               double *value) {
    if(Data.time == TIME_WITHOUT_DATA) {
        //Do nothing, default value should be initial value
        return;
    }
    else {
        //No physical connection, so just return the value
        (*value) = Data.Value;
    }
}


void TLMPlugin::GetForce1D(double speed,
                           TLMTimeData1D &Data,
                           TLMConnectionParams &Params,
                           double *force) {

    if(Data.time == TIME_WITHOUT_DATA) {
        //Do nothing, default force should be initial value
        return;
    }
    else {
        double f = Data.GenForce;

        // The reaction force is (ReceivedWave - Impedance * Velocity)
        (*force) = f -  Params.Zf * speed;
    }
}

