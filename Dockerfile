FROM docker.io/cloudflare/sandbox:0.6.7

# Install OpenCode CLI
RUN curl -fsSL https://opencode.ai/install | bash

# Longer timeout for OpenCode operations
ENV COMMAND_TIMEOUT_MS=300000

# Port 3000 is used by the sandbox SDK internally
EXPOSE 3000
