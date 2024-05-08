#!/bin/bash
# Start MongoDB normally
mongod --replSet replica-set --bind_ip_all &
sleep 5  # Adjust this sleep duration as per your deployment needs

# Run the initialization script if not already initialized
mongosh --eval "load('/scripts/initiate-replica.js');"

# Keep the MongoDB process running
tail -f /dev/null
