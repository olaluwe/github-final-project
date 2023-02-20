#!/bin/bash 
# This script takes to arguments
# namely: arg1 - principal
#         arf2 - interest
##################################################
# Additional Authors: Michael Fayemi AB Olaluwe  #
##################################################

# MAX_ARS is the maximum number arguments
MAX_ARGs=4

# re is the expression for either integer or decimal
re='^[0-9]+([.][0-9]+)?$'
re2='^[0-9]+$'

if [ "$#" -ne $MAX_ARGs ] || [[ "$1" =~ $re ]] || [[ "$2" =~ $re ]] || [[ "$3" =~ $re ]]
  echo "Usage: $0 [principat] [interest_rate]" >&2;
  exit 1
else
  interest=$(bc<<<"$1 * $2 * $3");
  echo "The simple interest is: \$$interest.";
  exit 0
