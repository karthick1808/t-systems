roles_web_pillar_debug:
  file.managed:
    - name: /root/pillar_debug.txt
    - contents: |
        {{ salt['pillar.get']('foo') }}
