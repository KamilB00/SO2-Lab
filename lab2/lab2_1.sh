#!/bin/bash -eu

DIR1="${1}"
FILE2="${2}"

if [[ -n "${DIR1}" && -n "${DIR2}" ]]; then

    if [[ ! ${DIR1} == /* ]]; then
        DIR1="$(pwd)/${DIR1}"

    elif [[ ! ${DIR2} == /* ]]; then
        DIR2="$(pwd)/${DIR2}"       
    fi         

    if [[ -d ${DIR1} && -d ${DIR2} ]]; then

        for FILE in $(ls ${DIR1}); do 
       
            if  [[ -L ${DIR1}/${FILE} && -d ${DIR1}/${FILE} ]]; then
               echo "${FILE} - is a symlink to directory"

            elif [[ -L ${DIR1}/${FILE} ]]; then
                echo "${FILE} - is a symlink"
                
            elif [[ -d ${DIR1}/${FILE} ]]; then
                echo "${FILE} - is a directory"
                name="${FILE^^}_ln"
                ln -s ${FILE} ${DIR2}/${name}
               
            elif [[ -f ${DIR1}/${FILE} ]];  then
                echo "${FILE} - is a file"
                name="${FILE^^}_ln"
                ln -s ${FILE} ${DIR2}/${name}
             
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