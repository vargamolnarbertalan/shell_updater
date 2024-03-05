# Use a base image with shell support, such as Alpine Linux
FROM ubuntu:latest

# Copy your shell script into the container
COPY dns.sh /usr/local/bin/

# Set the working directory
WORKDIR /usr/local/bin/

# Make the script executable
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y dnsutils
RUN apt-get install -y nano
RUN chmod +x dns.sh

# Run your script when the container starts
CMD ["./dns.sh"]