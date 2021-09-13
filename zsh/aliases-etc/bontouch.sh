#!/bin/bash

# Bontouch
# Swish
alias gtsst="cd ~/Projects/Bontouch/Swish/support-tool"

# Dax CLI
DAX_PROJECT_BONTOUCH_AB="77904"
DAX_PROJECT_SWISH_PORTAL="608785"
DAX_PROJECT_SWISH_MISC="480727"

function dax-custom-log() {
  PROJECT=$1
  TIME=$2
  TEXT=$3
  DATESTRING=$4

  if [[ $DATESTRING == "" ]]; then
    dax log -p ${PROJECT} ${TIME} ${TEXT}
  else
    dax log -p ${PROJECT} -d ${DATESTRING} ${TIME} ${TEXT}
  fi
}

function dax:webkul() {
  echo "Logging 1h for Bontouch AB: #ca-web Web-KUL"
  dax-custom-log ${DAX_PROJECT_BONTOUCH_AB} 1h "#ca-web Web-KUL" $1
}
function dax:webfika() {
  echo "Logging 30min for Bontouch AB: #ca-web Web-fika"
  dax-custom-log ${DAX_PROJECT_BONTOUCH_AB} 30m "#ca-web Web-fika" $1
}
function dax:cooking() {
  echo "Logging 30min for Bontouch AB: #manager-sync"
  dax-custom-log ${DAX_PROJECT_BONTOUCH_AB} 30m "#manager-sync" $1
}
function dax:friday-demo() {
  echo "Logging 1h for Bontouch AB: #friday-demo"
  dax-custom-log ${DAX_PROJECT_BONTOUCH_AB} 1h "#friday-demo" $1
}
function dax:swish-demo() {
  echo "Logging 30min for Swish - Misc: #internal-demo"
  dax-custom-log ${DAX_PROJECT_SWISH_MISC} 30m "#internal-demo" $1
}
function dax:swish-friday() {
  echo "Logging 30min for Swish - Misc: #swish-friday"
  dax-custom-log ${DAX_PROJECT_SWISH_MISC} 30m "#swish-friday" $1
}
function dax:swish-portal() {
  echo "Logging ${1} for Swish - Portal: ${2}"
  dax-custom-log ${DAX_PROJECT_SWISH_PORTAL} $1 $2 $3
}
function dax:swish-misc() {
  echo "Logging ${1} for Swish - Misc: ${2}"
  dax-custom-log ${DAX_PROJECT_SWISH_MISC} $1 $2 $3
}

alias dax:today="dax entries --projects all"
function dax:yesterday() {
  DATE=$(date -j -v -1d '+%w')
  if [[ $DATE == '0' ]] || [[ $DATE == '6' ]]; then
    NEW_DATE=$(date -j -v -friday '+%Y-%m-%d')
    dax entries --projects all --date ${NEW_DATE}
  else
    dax entries --projects all --date yesterday
  fi
}
