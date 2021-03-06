#!/usr/bin/env bash
# ==============================================================================
# Serve It!
# ==============================================================================
set -ex

function doServe ()
{
  local C_DIR=$(dirname $(readlink -f $0))
  local GENERATE_SH="${C_DIR}/generate.sh"

  if [[ -r $GENERATE_SH ]]
  then
    command $GENERATE_SH
  fi

  hexo server

  return $?
}

doServe

if [[ 0 -ne $? ]]
then
  exit $?
fi

