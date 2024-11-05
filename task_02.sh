#!/bin/bash

# Eсли в переменной VAR1 хранятся не числовые данные, вывести на экран результат конкатенации VAR1+«mama»+VAR1
# иначе вывести квадрат значения VAR1. 
# eсли переменная не задана, вывести на экран ERROR.

if [[ -z "$VAR1" || -z "$VAR2" ]]; then
    echo "ERROR"
else
    result=$((VAR1 + VAR2))
    echo "$result"
fi
