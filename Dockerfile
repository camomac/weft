FROM docker.io/cloudflare/sandbox:0.6.7

# Install OpenCode CLI (skip SSL verification for install script)
RUN curl -fsSLk https://opencode.ai/install | bash

# Longer timeout for OpenCode operations
ENV COMMAND_TIMEOUT_MS=300000

# Port 3000 is used by the sandbox SDK internally
EXPOSE 3000
