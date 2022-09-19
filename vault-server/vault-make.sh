#!/bin/bash

source ../demo-env

echo "Creating vault directories with a base of $VAULT_BASE"
ts=$(date '+%Y%m%d%H%M')

mkdir ~/backup

if [ -d $VAULT_BASE ];
then
    tar czvf ~/backup/vault_backup_$ts.tgz $VAULT_BASE/*
    rm -rf $VAULT_BASE/*
fi

mkdir -p $VAULT_BASE/config $VAULT_BASE/data $VAULT_BASE/logs
cp config.hcl $VAULT_BASE/config/

echo vault server -config $VAULT_BASE/config/config.hcl
echo  
vault server -config $VAULT_BASE/config/config.hcl 
