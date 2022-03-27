#!/bin/bash

SOURCE_DIR="lab_uno"
RM_LIST="2remove"
TARGET_DIR="bakap"

function foo() {
    echo "SOURCE_DIR = " ${1}, "RM_LIST = "${2}, "TARGET_DIR = " ${3}
}

foo ${SOURCE_DIR} ${RM_LIST} ${TARGET_DIR}