#!/bin/bash

echo "Artillery Socket Test"
artillery -V
output_name="$(date +%Y%m%d)_$(date +%T)"
artillery run -o ./senario_file_report/${output_name}.json $1
artillery report -o ./senario_file_report/${output_name}.html ./senario_file_report/${output_name}.json