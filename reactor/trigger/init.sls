---
log_to_file:
  cmd.run:
    - name: 'echo "Log entry: $(date)" >> /var/log/reactor_master.log'
