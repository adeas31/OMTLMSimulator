.PHONY: all lib default depend clean

# The following is need for BEAST compatibility
ifeq ($(MAKEFILEHEADHOME),)
  UP=$(PWD)
  MAKEFILEHEADHOME=$(UP)
  BINDIR=$(UP)/bin
else
  # This is for BEAST
  UP=$(MAKEFILEHEADHOME)/src
  BINDIR=$(UP)/../bin/$(ABI)
endif


allplugins=ADAMS Simulink Modelica OpenModelica FMIWrapper
plugins=Modelica OpenModelica FMIWrapper

all default: lib
	cd common; $(MAKE) all

lib:
# Note: lib will not make the manager!
	cd 3rdParty; $(MAKE) 
	cd common; $(MAKE) lib

install: lib
	cd common ; $(MAKE) install
	for i in ${plugins} ; do \
		( cd $$i ; $(MAKE) install ) \
	done

omtlmlib:
	cd common; $(MAKE) omtlmlib

depend:
	cd common; $(MAKE) depend

clean:
	rm -rf $(BINDIR)/*.dll 
	cd common; $(MAKE) clean
	cd 3rdParty; $(MAKE) clean
	for i in ${allplugins} ; do \
		( cd $$i ; $(MAKE) clean ) \
	done
