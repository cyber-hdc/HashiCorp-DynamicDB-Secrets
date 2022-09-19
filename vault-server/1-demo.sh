#!/bin/bash

source ../demo-env

clear

echo vault operator init -key-shares=5 -key-threshold=3
echo
vault operator init -key-shares=5 -key-threshold=3 | tee ~/vault.info
source ~/hcvault-dynamic-db/demo-env
export ROOT_TOKEN=$(cat ~/vault.info | grep Root | cut -f4 -d' ')
export VAULT_TOKEN=$ROOT_TOKEN

read

source ../demo-env

# 
# Unseal
echo ""
echo vault operator unseal
echo ""
vault operator unseal $(cat ~/vault.info | grep Unseal | cut -f4 -d' '  | sed -n '1 p')
vault operator unseal $(cat ~/vault.info | grep Unseal | cut -f4 -d' '  | sed -n '3 p')
vault operator unseal $(cat ~/vault.info | grep Unseal | cut -f4 -d' '  | sed -n '5 p')

# export VAULT_TOKEN=$ROOT_TOKEN;

# ./vault-setup 
