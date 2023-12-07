roles_web_grains_debug3:
  file.managed:
    - name: /root/grains_debug3.txt
    - contents: {{ grains['osfinger'] }}
