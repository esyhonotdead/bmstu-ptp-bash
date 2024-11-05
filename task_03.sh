#!/bin/bash

# Если в переменной VAR1 хранятся не числовые данные, вывести на экран результат конкатенации VAR1+«mama»+VAR1
# иначе вывести квадрат значения VAR1
# ecли переменная не задана, вывести на экран ERROR.

if [[ -z "$VAR1" ]]; then
    echo "ERROR"
else
    if [[ "$VAR1" =~ ^-?[0-9]+$ ]]; then
        result=$((VAR1 * VAR1))
        echo "$result"
    else
        result="${VAR1}mama${VAR1}"
        echo "$result"
    fi
fi