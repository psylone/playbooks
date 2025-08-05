load_ssh_keys () {
  find ~/.ssh -type f -name 'id_*[^.pub]' -exec ssh-add {} \; 2>/dev/null
}
