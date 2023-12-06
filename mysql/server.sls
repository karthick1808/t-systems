mysql_debconf_install:
  pkg.installed:
    - name: debconf

mysql_debconf_utils:
  pkg.installed:
    - name: debconf-utils

mysql_debconf_settings:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'temppass'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'temppass'}
    - require:
      - pkg: debconf
      - pkg: debconf-utils    
    - require_in:
      - mysql_server_install
mysql_server_install:
  pkg.installed:
    - name: mysql-server
