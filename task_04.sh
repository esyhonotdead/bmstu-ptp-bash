#!/bin/bash

# Если в переменной VAR1 хранится слово «yes», вывести на экран значение выражения VAR2+VAR3
# иначе вывести значение VAR3+VAR2+VAR2 (игнорировать регистр)
# ecли одна из переменных не задана, вывести на экран ERROR.

if [[ -z "$VAR1" || -z "$VAR2" || -z "$VAR3" ]]; then
    echo "ERROR"
else
    if [[ "${VAR1,,}" == "yes" ]]; then
        result="$((VAR2 + VAR3))"
        echo "$result"
    else
        result="$((VAR3 + VAR2 + VAR2))"
        echo "$result"
    fi
fi