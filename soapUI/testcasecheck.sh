#!/bin/sh

#  testcasecheck.sh
#  
#
#  Created by Joy DSilva on 11/24/19.
#


DIR=/opt/testresults
TESTCASE=/opt/samplerest.xml
#delete the test results directory
rm -r "$DIR"
/opt/SoapUI-5.5.0/bin/testrunner.sh -r "$TESTCASE" -f "$DIR"

#if testresults directory is present
if [ -d "$DIR" ]; then
#and is not empty
    if [ "$(ls -A $DIR)" ]; then
        echo "Testcase Failed"
    fi
#iterate each testcase report file and print the contents
    for entry in "$DIR"/*
    do
     echo "$entry"
     tail -n +1 "$entry"
    done
fi
