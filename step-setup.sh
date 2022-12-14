#!/bin/bash

wget https://dl.step.sm/gh-release/cli/docs-cli-install/v0.20.0/step-cli_0.20.0_amd64.deb
sudo dpkg -i step-cli_0.20.0_amd64.deb
step -v 
step certificate create --profile root-ca "Create certificate" ca.crt ca.key --insecure --no-password
step certificate inspect https://smallstep.co
