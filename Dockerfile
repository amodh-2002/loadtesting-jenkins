# Use an official lightweight Linux distribution
FROM alpine:latest

# Set a label for the image
LABEL maintainer="Amodh BH"

# Run a command when the container starts
CMD ["echo", "Hello, World!"]
