# File: /srv/salt/onfail_example.sls

intentional_fail:
  cmd.run:
    - name: exit 1

recover_from_fail:
  cmd.run:
    - name: echo "This command runs only if intentional_fail fails"
    - onfail:
      - cmd: intentional_fail
