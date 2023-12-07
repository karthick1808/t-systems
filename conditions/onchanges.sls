# File: docker_build.sls

# Download Dockerfile
download_file_from_master:
  file.recurse:
    - name: /srv/salt/docker
    - source: salt://docker
    - destination: /srv/salt 

# Build Docker image
run_apache_service:
  service.running:
    - name: apache2
    - onchanges:
      - file: download_file_from_master
