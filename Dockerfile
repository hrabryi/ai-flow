# Use the official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Set a working directory
WORKDIR /data

# Copy any necessary local configuration or custom nodes (optional)
# COPY ./custom-config.json /data/config.json

# Expose the port n8n runs on
EXPOSE 5678

# Set the required environment variables
# These can also be configured in a .env file or via Docker Compose
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin_password
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Start n8n
CMD ["n8n"]