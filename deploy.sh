#!/bin/bash

disp() {
    MESSAGE="[$(date +%T:%N)] $1"
    DIVIDER=$(printf "%100s\n" '' | tr '[:blank:]' '[=]')

    echo "${DIVIDER}"
    echo "${MESSAGE}"
    echo "${DIVIDER}"
}

disp "START APT UPDATE"
apt update

disp "START APT UPGRADE"
apt upgrade -y

disp "START DOCKER INSTALL"
apt install -y docker.io

# TODO: k8s, helm
