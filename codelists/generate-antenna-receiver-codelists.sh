#!/usr/bin/env bash

output=antenna-receiver-codelists.xml

./generate-antenna-receiver-codelists.hs rcvr_ant.tab > ${output}
echo "Generated ${output}"
./validate-antenna-receiver-codelists.sh
exit 0
