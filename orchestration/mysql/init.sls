mysql_packages:
  pkg.installed:
    - name: mysql-server
mysql_server:
  service.running:
    - name: mysqld
    - enable: True
    - reload: True
    - require:
      - pkg: mysql_packages
