node 'default-local-mac' {
  include sshkeys
  
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

node /^bo-ntp\d+$/ inherits default-local-mac {
  include ntp
  include resolv_conf
}

node /^dns\d+$/ inherits default-local-mac {
  
}