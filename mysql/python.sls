mysql_python_install:
  pkg.installed:
    - pkgs:
      - python3-mysqldb
      - python3-dev
      - default-libmysqlclient-dev
      - build-essential
      - pkg-config
install_mysqldb:
  pip.installed:
    - names:
      - mysqlclient
