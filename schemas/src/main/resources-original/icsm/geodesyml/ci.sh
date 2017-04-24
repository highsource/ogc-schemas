#!/usr/bin/env bash

steps=(
       './run-tests.sh'
       './deploy-documentation.sh'
      )

outcome=0

for step in ${steps[@]}; do
    ${step}
    outcome=$?
    if [ $outcome -gt 0 ]; then
        break
    fi
done

exit ${outcome}

