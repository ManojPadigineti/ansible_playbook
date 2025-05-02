run () {
    for instances in $@ 
      do
         ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inv.txt playbook.yml -e var_file=$instances
      done
}

run $@