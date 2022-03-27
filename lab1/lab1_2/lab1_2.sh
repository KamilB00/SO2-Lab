#!/bin/bash

SOURCE_DIR="lab_uno"
RM_LIST="2remove"
TARGET_DIR="bakap"

function foo() {
   if [[ ! -d "${3:-}" ]]; then
      mkdir "${3}"
   fi
}

foo ${SOURCE_DIR} ${RM_LIST} ${TARGET_DIR}