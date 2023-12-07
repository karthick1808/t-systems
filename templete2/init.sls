{% from "templete2/karthick.jinja" import users with context %}

create_user_john:
  user.present:
    - name: ks
    - home: /home/ks
    - shell: /bin/bash
    - groups:
      - {{ users.sudo_group }}
