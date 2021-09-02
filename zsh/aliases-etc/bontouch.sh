#!/bin/bash

# Bontouch
# Swish
alias gtsst="cd ~/Projects/Bontouch/Swish/support-tool"

# Dax CLI
DAX_PROJECT_BONTOUCH_AB="77904"
DAX_PROJECT_SWISH_PORTAL="608785"

function dax-custom-log() {
  PROJECT=$1
  TIME=$2
  TEXT=$3
  DATESTRING=$4

  if [[ $DATESTRING == "" ]]; then
    dax log -p ${PROJECT} ${TIME} ${TEXT}
  elif [[ $DATESTRING == "yesterday" ]]; then
    DATE=$(date -j -v -1d '+%Y-%m-%d')
    dax log -p ${PROJECT} -d ${DATE} ${TIME} ${TEXT}
  else
    dax log -p ${PROJECT} -d ${DATESTRING} ${TIME} ${TEXT}
  fi
}

function dax:webkul() {
  dax-custom-log 77904 1:00 "#ca-web Web-KUL" $1
}
function dax:webfika() {
  dax-custom-log 77904 0:30 "#ca-web Web-fika" $1
}
function dax:cooking() {
  dax-custom-log 77904 0:30 "#manager-sync" $1
}
function dax:friday-demo() {
  dax-custom-log 77904 1:00 "#friday-demo" $1
}