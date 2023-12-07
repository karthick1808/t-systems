roles_web_grains_debug2:
  file.managed:
    - name: /root/grains_debug2.txt
    - contents: |
        {{ salt['grains.get']('osfinger', 'my default value') }}
