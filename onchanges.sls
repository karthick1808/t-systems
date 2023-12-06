# File: docker_build.sls

# Download Dockerfile
download_dockerfile:
  file.recurse:
    - name: /srv/salt/docker
    - source: salt://docker
    - destination: /srv/salt 

# Build Docker image
build_docker_image:
  cmd.run:
    - name: docker build -t myapp:latest /srv/salt/docker
    - onchanges:
      - file: download_dockerfile
