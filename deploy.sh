#!/bin/bash

disp() {
    MESSAGE="[$(date +%T:%N)] $1"
    DIVIDER=$(printf "%100s\n" '' | tr '[:blank:]' '[=]')

    echo "${DIVIDER}"
    echo "${MESSAGE}"
    echo "${DIVIDER}"
}
