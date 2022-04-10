#!/bin/bash -eu

DIR1="${1}"

if [[ -n "${DIR1}" ]]; then

    if [[ ! ${DIR1} == /* ]]; then
        DIR1="$(pwd)/${DIR1}"
    fi         

    if [[ -d ${DIR1} ]]; then

        for FILE in $(ls ${DIR1}); do
            EXTENSION=${FILE##*.}
        
        if [[ -f ${DIR1}/${FILE} ]] && [[ ${EXTENSION} == "bak" ]]; then
            chmod uo-w ${DIR1}/${FILE}

        elif [[ -d ${DIR1}/${FILE} ]] && [[ ${EXTENSION} == "bak" ]]; then
            chmod ug-x ${DIR1}/${FILE}
            chmod o+x ${DIR1}/${FILE}
        
        elif [[ -d ${DIR1}/${FILE} ]] && [[ ${EXTENSION} == "tmp" ]]; then
            chmod ugo+wx ${DIR1}/${FILE}

        elif [[ -f ${DIR1}/${FILE} ]] && [[ ${EXTENSION} == "txt" ]]; then
            chmod 421 ${DIR1}/${FILE}

        elif [[ -f ${DIR1}/${FILE} ]] && [[ ${EXTENSION} == "exe" ]]; then

            chmod ugo+x ${DIR1}/${FILE} 
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