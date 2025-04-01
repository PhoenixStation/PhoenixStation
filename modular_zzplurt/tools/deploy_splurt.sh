#!/bin/bash

# This script will deploy our modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_zzplurt/icons

mkdir -p \
    $1/modular_zzplurt/icons

cp -r modular_zzplurt/icons/* $1/modular_zzplurt/icons/
