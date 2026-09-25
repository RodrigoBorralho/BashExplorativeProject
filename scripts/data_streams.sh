#!/bin/bash
echo -e '\nrunning data_streams.sh...'

chmod 000 $1/scripts/file_with_no_permissions.sh

echo -e '\nnormal execute:'

bash "$1/scripts/file_with_no_permissions.sh"

echo -e '\nnormal execute + 2>/dev/null'

bash "$1/scripts/file_with_no_permissions.sh" 2> /dev/null
