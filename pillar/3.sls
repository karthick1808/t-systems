
roles_web_pillar_debug3:
  file.managed:
    - name: /root/pillar_debug3.txt
    - contents: {{ pillar['foo'] }}
