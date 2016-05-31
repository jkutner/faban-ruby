#!/bin/bash

[ -z "$FABAN_HOME" ] && echo "FABAN_HOME is not set!" && exit 1
[ -z "$JAVA_HOME" ] && echo "JAVA_HOME is not set!" && exit 1

pushd `dirname $0` > /dev/null
SCRIPT_DIR=`pwd`
popd > /dev/null

fhblib=${FABAN_HOME}/lib

jruby -J-cp ${fhblib}/fabandriver.jar:${fhblib}/fabancommon.jar:${JAVA_HOME}/lib/tools.jar:${fhblib}/commons-httpclient-3.1.jar:${fhblib}/commons-logging.jar:${fhblib}/commons-codec-1.2.jar $SCRIPT_DIR/faban.rb $*
