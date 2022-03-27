#!/bin/bash

SOURCE_DIR="lab_uno"
RM_LIST="2remove"
TARGET_DIR="bakap"

function foo() {
   rm -rf ${TARGET_DIR}
   rm -rf ${RM_LIST}
   rm -rf ${SOURCE_DIR}

   if [[ ! -d "${3:-}" ]]; then
      mkdir "${3}"
   fi

   touch ${RM_LIST}

   RM_LIST_CONTENT=("ark" "ak2" "ucisw" "ptm")
   SOURCE_DIR_CONTENT=("sztuczna_inteligencja" "ak2" "ark")

   for ELEMENT in ${RM_LIST_CONTENT[@]}; do
      echo "${ELEMENT}" >> ${RM_LIST}
      echo "${ELEMENT} added -> 2remove"
   done
   
   echo "----"

   mkdir "${SOURCE_DIR}"
   for ELEMENT in ${SOURCE_DIR_CONTENT[@]}; do
      touch ${SOURCE_DIR}/${ELEMENT}
      echo "${SOURCE_DIR}/${ELEMENT} created"
   done

   echo "----"

while read -r FILE_TO_REMOVE
    do 
      for FILE in $(ls ${SOURCE_DIR}); do
         if [[ "${FILE_TO_REMOVE}" == "${FILE}" ]]; then
               rm -rf ${SOURCE_DIR}/${FILE}
               echo "${SOURCE_DIR}/${FILE} deleted !"
            fi 
      done 
   echo ""
done < "${RM_LIST}"

}

foo ${SOURCE_DIR} ${RM_LIST} ${TARGET_DIR}