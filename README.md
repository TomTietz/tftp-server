# Tiny TFTP Server

Docker container with a minimal footprint TFTP Server


## Usage

**Windows:**
```
docker build -t tftp-server .
docker run -d --name my-tftp-server -p 69:69/udp -v ${PWD}\tftpboot:/var/tftp_files tftp-server
```