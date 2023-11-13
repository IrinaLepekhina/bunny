#!/bin/bash
# tg_bot/bunny_init.sh - Script to initialize RabbitMQ vhosts and permissions

# Make sure you replace 'rabbitmq' with the actual hostname or IP address if different.
RABBITMQ_HOSTNAME="rabbitmq"

# Create vhosts
rabbitmqctl -n rabbit@$RABBITMQ_HOSTNAME add_vhost test_vhost
rabbitmqctl -n rabbit@$RABBITMQ_HOSTNAME add_vhost dev_vhost
rabbitmqctl -n rabbit@$RABBITMQ_HOSTNAME add_vhost prod_vhost

# Set permissions for the vhosts
rabbitmqctl -n rabbit@$RABBITMQ_HOSTNAME set_permissions -p test_vhost guest ".*" ".*" ".*"
rabbitmqctl -n rabbit@$RABBITMQ_HOSTNAME set_permissions -p dev_vhost guest ".*" ".*" ".*"
rabbitmqctl -n rabbit@$RABBITMQ_HOSTNAME set_permissions -p prod_vhost guest ".*" ".*" ".*"