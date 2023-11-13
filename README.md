## RabbitMQ Configuration for Chat Bot

This repository contains the Docker configuration and initialization script for setting up RabbitMQ for a chat bot application.

### Files in the Repository

- `docker-compose.yml`: Docker Compose file to set up RabbitMQ with management UI.
- `bunny_init.sh`: Bash script for initializing RabbitMQ virtual hosts and permissions.

### Setup Instructions

1. **Place the Erlang Cookie:**
   Ensure you have a `.erlang.cookie` file at the root of your project. This file is required for RabbitMQ authentication and should be securely created.

```
bunny/
   └── .erlang.cookie
```