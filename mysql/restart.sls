include:
  - mysql.restart

mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: mysql
    - watch:
      - name: mysql_server_config
