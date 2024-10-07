#!/bin/bash

## ins id
vm_id=$1
echo "VM ID: $vm_id"

vm_name=$2
echo "VM Name: $vm_name"

## clone id
clone_id="100"

## storage name
storage_name="STORAG"
echo "Storage Name: $storage_name"

## clone type
clone_type="full"

## vm format
format="raw"

## clone vm
echo "Running qm clone command..."
qm clone $clone_id $vm_id --full --storage $storage_name --format $format --name "$vm_name" 2>&1

## start vm (not comment for needed)
qm start $vm_id

echo "Script execution completed"