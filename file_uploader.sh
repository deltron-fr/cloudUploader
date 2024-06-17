#!/bin/bash

# This is a script to upload files to an Azure Blob storage Account, using the azure CLI


# Input necessary environment variables
file_path=$1
name_of_storage_account="$azure_storage_account"
name_of_connection_string="$azure_connection_string"
name_of_container=$cloud_storage
name_of_file=$2

# Parse Command Line Arguments
if [ $# -ne 2 ]
then
    echo "Syntax: $0 {file_path} {name_of_your file}"
    exit 1
fi

# Check if File does not exist
if [ ! -f $1 ]
then
    echo "File not Found"
    exit 2
fi

# Upload the File
az storage blob upload --account-name $name_of_storage_account --connection-string $name_of_connection_string --container-name $name_of_container --file $file_path --name $name_of_file
