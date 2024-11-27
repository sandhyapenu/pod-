# Base image: Ubuntu latest
FROM ubuntu:latest

# Install busybox
RUN apt-get update && apt-get -y install busybox

# Create directory for busybox executable
RUN mkdir -p /usr/sbin/

# Copy busyboxctl into the container
COPY busyboxctl /usr/sbin/

# Expose port 82
EXPOSE 82

# Set entrypoint
ENTRYPOINT ["/usr/sbin/busyboxctl"]

# Set default command for the container
CMD ["-D", "FOREGROUND"]


