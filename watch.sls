# File: manage_file.sls

# Manage the contents of a file
manage_file_content:
  file.managed:
    - name: /srv/salt/docker/index.html
    - source: salt://docker/index.html

# Restart a service when the file changes
restart_my_service:
  service.running:
    - name: apache2
    - reload: True
    - watch:
      - file: manage_file_content
