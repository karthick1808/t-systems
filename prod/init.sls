creating_selvam_file:
  file.managed:
    - source: salt://files/karthick.txt #Source salt:// = /srv/salt/
    - name: /root/sls/selvam1.txt
    - user: root
    - group: root
    - mode: '0644'
