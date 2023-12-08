enforce_salt_config:
  local.state.sls:
    - tgt: 'app01'
    - arg:
      - trigger

# salt 'app01' state.sls trigger
