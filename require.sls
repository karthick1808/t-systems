creating_file:
  file.managed:
    - name: /root/sls/karthick.txt #destination
    - user: root
    - contents: Hello Karthick!!
    - group: root
    - mode: '0644'
    - require:
      - create_directory
create_directory:
  file.directory:
    - name: /root/sls
    - user: root
    - group: root
    - mode: 0600
