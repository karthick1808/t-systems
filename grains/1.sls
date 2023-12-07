# Grains
roles_web_grains_debug:
  file.managed:
    - name: /root/grains_debug.txt
    - contents: |
        {{ salt['grains.get']('osfinger') }}
