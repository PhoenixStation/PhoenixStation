#!/bin/bash

# This script will deploy our modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_zzzphoenix/icons

mkdir -p \
    $1/modular_zzzphoenix/icons

cp -r modular_zzzphoenix/icons/* $1/modular_zzzphoenix/icons/
