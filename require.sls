creating_file:
  file.managed:
    - name: /root/sls/karthick.txt #destination
    - user: root
    - contents: Hello Karthick!!
    - group: root
    - mode: '0644'
