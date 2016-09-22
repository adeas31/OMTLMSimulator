# CMake generated Testfile for 
# Source directory: /home/robbr48/h/Dependencies/FMILibrary-2.0.1
# Build directory: /home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest_build_all "/usr/bin/cmake" "--build" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil" "--config" "Debug")
add_test(ctest_fmi_zip_unzip_test "fmi_zip_unzip_test")
set_tests_properties(ctest_fmi_zip_unzip_test PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_zip_zip_test "fmi_zip_zip_test")
set_tests_properties(ctest_fmi_zip_zip_test PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_me_test "fmi_import_me_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_me.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_me_test PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_cs_test "fmi_import_cs_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_cs.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_cs_test PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_cs_tc_test "fmi_import_cs_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_cs_tc.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
add_test(ctest_fmi_import_xml_test_empty "fmi_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/Test/FMI1/fmu_dummy")
set_tests_properties(ctest_fmi_import_xml_test_empty PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_xml_test "fmi_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_xml_test PROPERTIES  DEPENDS "ctest_fmi_import_cs_test")
add_test(ctest_fmi_import_xml_test_mf "fmi_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_malformed_mf")
set_tests_properties(ctest_fmi_import_xml_test_mf PROPERTIES  DEPENDS "ctest_build_all" WILL_FAIL "TRUE")
add_test(ctest_fmi1_capi_cs_test "fmi1_capi_cs_test")
set_tests_properties(ctest_fmi1_capi_cs_test PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi1_capi_me_test "fmi1_capi_me_test")
set_tests_properties(ctest_fmi1_capi_me_test PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi1_logger_test_run "fmi1_logger_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_me.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/fmi1_logger_test_output.txt")
set_tests_properties(ctest_fmi1_logger_test_run PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi1_logger_test_check "/usr/bin/cmake" "-E" "compare_files" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/fmi1_logger_test_output.txt" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/Test/FMI1/fmi1_logger_test_output.txt")
set_tests_properties(ctest_fmi1_logger_test_check PROPERTIES  DEPENDS "ctest_fmi1_logger_test_run")
add_test(ctest_fmi2_import_xml_test_empty "fmi2_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/Test/FMI2/fmu_dummy")
set_tests_properties(ctest_fmi2_import_xml_test_empty PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi2_import_xml_test_me "fmi2_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_me")
set_tests_properties(ctest_fmi2_import_xml_test_me PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi2_import_xml_test_cs "fmi2_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_cs")
set_tests_properties(ctest_fmi2_import_xml_test_cs PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi2_import_xml_test_mf "fmi2_import_xml_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_malformed_mf")
set_tests_properties(ctest_fmi2_import_xml_test_mf PROPERTIES  DEPENDS "ctest_build_all" WILL_FAIL "TRUE")
add_test(ctest_fmi2_import_test_me "fmi2_import_me_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_me.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi2_import_test_me PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi2_import_test_cs "fmi2_import_cs_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_cs.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi2_import_test_cs PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_test_no_xml "fmi_import_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/Test/try_to_uncompress_this_file.zip" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing")
set_tests_properties(ctest_fmi_import_test_no_xml PROPERTIES  DEPENDS "ctest_fmi_zip_unzip_test" WILL_FAIL "TRUE")
add_test(ctest_fmi_import_test_me_1 "fmi_import_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_me.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_test_me_1 PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_test_cs_1 "fmi_import_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall_cs.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_test_cs_1 PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_test_me_2 "fmi_import_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_me.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_test_me_2 PROPERTIES  DEPENDS "ctest_build_all")
add_test(ctest_fmi_import_test_cs_2 "fmi_import_test" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/BouncingBall2_cs.fmu" "/home/robbr48/h/Dependencies/FMILibrary-2.0.1/build-fmil/Testing/tempfolder")
set_tests_properties(ctest_fmi_import_test_cs_2 PROPERTIES  DEPENDS "ctest_build_all")
subdirs(ThirdParty/c99_snprintf)
subdirs(Config.cmake/Minizip)