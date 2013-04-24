node 'default-local-mac' {
  include sshkeys
  include resolv_conf
  
  package {'nc':
    ensure   => present,
  }
  package {'openssh-clients':
    ensure   => present,
  }
  package {'bind-utils':
    ensure   => present,
  }
} 

node 'bo-ntp001.local.mac' inherits default-local-mac {
  include ntp
}

node /^dns\d+/ inherits default-local-mac {
  
}