#!/bin/bash -eu

DIR1="${1}"
FILE2="${2}"

if [[ -n "${DIR1}" && -n "${FILE2}" ]]; then

    if [[ ! ${DIR1} == /* ]]; then
        DIR1="$(pwd)/${DIR1}"

    elif [[ ! ${FILE2} == /* ]]; then
        FILE2="$(pwd)/$FILE2}"       
    fi         

    if [[ -d ${DIR1} && -f ${FILE2} ]]; then

        for FILE in $(ls ${DIR1}); do 
            if [[ -L ${DIR1}/${FILE} ]] && [[ ! -e ${DIR1}/${FILE} ]]; then
                echo "${FILE,,} $(date +"%Y-%m-%d")" >> ${FILE2} 
                rm -rf ${DIR1}/${FILE}
            fi
        done

    else 
        echo "No such file or directory"
        exit 2
    fi    
else 
    echo "Paremeters not set"
    exit 1
fi    