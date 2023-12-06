mysql_service_enable:
  service.running:
    - name: mysql
    - require:
      - pkg: mysql-server
