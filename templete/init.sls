jinja_file:
  file.managed:
    - name: /root/karthick.txt
    - source: salt://templete/map.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: '0644'
