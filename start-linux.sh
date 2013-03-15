#!/usr/bin/env bash

MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
	java -jar bin/selenium-server-standalone-2.31.0.jar -port 4455 -Dwebdriver.chrome.driver="bin/linux/x84-64/chromedriver" -Dphantomjs.binary.path="bin/linux/x84-64/phantomjs"
else
	java -jar bin/selenium-server-standalone-2.31.0.jar -port 4455 -Dwebdriver.chrome.driver="bin/linux/x84/chromedriver" -Dphantomjs.binary.path="bin/linux/x84/phantomjs"
fi