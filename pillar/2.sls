roles_web_pillar_debug2:
  file.managed:
    - name: /root/pillar_debug2.txt
    - contents: |
        {{ salt['pillar.get']('foobar', 'my default value') }}
