#!/bin/bash
mkdir plugins
cd plugins
terraform init -from-module "git::git@github.com:LS-CO/leviDTCPPE-newrelic_terraform.git?ref=v1.0"
cd ..