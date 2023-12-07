# File: multitasks.sls
myapp-service:
  service.running:
    - name: apache2
    - enable: True
    - listen:
      - file: /etc/myapp/config.conf  # This task listens for changes in the config file
/etc/myapp/config.conf:
  file.managed:
    - source: salt://charset.conf
    - user: karthick
    - group: karthick
    - mode: 644
