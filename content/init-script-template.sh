#!/bin/bash
# **********************************************************************
# Ericsson Radio Systems AB                                     
# **********************************************************************
#
# (c) Ericsson Radio Systems AB 2017 - All rights reserved.
#
# The copyright to the computer program(s) herein is the property of
# Ericsson Radio Systems AB, Sweden. The programs may be used and/or
# copied only with the written permission from Ericsson Radio Systems AB
# or in accordance with the terms and conditions stipulated in the
# agreement/contract under which the program(s) have been supplied.
#
# **********************************************************************
#   Command Section
#
# **********************************************************************
#
#   Main body of program
#
# ********************************************************************
#
spark-submit --class $mainClass --deploy-mode $deployMode --conf spark.executor.extraJavaOptions=$schemaRegistry --conf spark.driver.extraJavaOptions=$schemaRegistry --master $masterUrl $bpsJar $flowPath $jobArguments
tail -f /dev/null
 
