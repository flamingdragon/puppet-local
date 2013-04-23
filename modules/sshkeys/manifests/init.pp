# this will like install your ssh key or something
class sshkeys {

  file {'sshdir':
    ensure  => directory,
    path    => '/root/.ssh',
    mode    => 700
  }

  file {'sshkey':
    ensure  => present,
    path    => '/root/.ssh/authorized_keys',
    mode    => 600,
    source  => 'puppet:///modules/sshkeys/authorized_keys',
  }
}


