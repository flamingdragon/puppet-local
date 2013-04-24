# Install a standard resolv.conf

class {'resolv-conf':

  file {'resolv.conf':
  source   => 'puppet:///modules/resolv-conf/resolv.conf',
  path     => '/etc/resolv.conf'
  owner    => 'root',
  group    => 'root',
  mode     => 644,
  }
 
}