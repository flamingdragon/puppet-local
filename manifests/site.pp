node 'default-local-mac' {
  include sshkeys
  include resolv-conf
  package {'nc'
    ensure   => present
  }
  package {'openssh-clients'
    ensure   => present
  }
  package {'bind-utils'
    ensure   => present
  }
} 

node 'bo-ntp001.local.mac' {
  include sshkeys
  include ntp
}