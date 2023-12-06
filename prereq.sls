restart_my_service:
  cmd.run:
    - name: systemctl restart apache2
    - prereq:
      - file: /srv/salt/docker

website:
  file.recurse:
    - name: /srv/salt/docker
    - source: salt://docker
    - destination: /srv/salt

get_apache_pid:
  cmd.run:
    - name: systemctl show -p MainPID apache2 | cut -d'=' -f2
    - tgt: 'app01'  # Replace with your target minion or '*' for all minions
    - shell: /bin/bash
