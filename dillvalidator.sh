#!/bin/sh
# This script installs Dill Validator Node


# Upgrad & Install

sudo apt-get update && sudo apt-get upgrade -y

# Download the light validator binary package

curl -O https://dill-release.s3.ap-southeast-1.amazonaws.com/linux/dill.tar.gz

# Extract the package:

tar -xzvf dill.tar.gz && cd dill

#Generate validator keys:

./dill_validators_gen new-mnemonic - num_validators=1 - chain=andes - folder=./

#Generate the validator keys and save them in directory:

ls -ltr ./validator_keys

# Import your keys to your keystore:

./dill-node accounts import --andes --wallet-dir ./keystore --keys-dir validator_keys/

