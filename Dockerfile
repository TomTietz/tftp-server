# Use Alpine as base image
FROM alpine:latest

# Install tftp-hpa (a popular TFTP server)
RUN apk add --no-cache tftp-hpa

# Create a directory for TFTP files
RUN mkdir -p /var/tftp_files
# Set /var/tftpboot as the working directory
WORKDIR /var/tftp_files

# Expose the TFTP port (69/UDP)
EXPOSE 69/udp

# Start the TFTP server when the container starts
CMD ["in.tftpd", "--foreground", "--address", "0.0.0.0:69", "--secure", "/var/tftp_files"]
