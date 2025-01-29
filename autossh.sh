#!/bin/bash

USERNAME="$1"
PASSWORD="$2"
SRV_FILE="$3"
TASK_FILE="$4"
SERVERS=()

if [[ ! -f "$SRV_FILE" ]]; then
    echo "Error: IPs file $SRV_FILE not found.."
    exit 1
fi

if [[ ! -f "$TASK_FILE" ]]; then
    echo "Error: Task file $TASK_FILE not found.."
    exit 1
fi

while IFS= read -r line; do
    SERVERS+=("$line")
done < "$SRV_FILE"

for SERVER in "${SERVERS[@]}"; do
    if sshpass -p "$PASSWORD" ssh "$USERNAME@$SERVER" 'bash -s' < "$TASK_FILE"; then
        echo "$SERVER: Login success"
    else
        echo "$SERVER: Login failed"
    fi
done
