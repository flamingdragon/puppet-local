# Install a standard resolv.conf
class resolv_conf {

  file {'resolv.conf':
  source   => 'puppet:///modules/resolv_conf/resolv.conf',
  path     => '/etc/resolv.conf',
  owner    => 'root',
  group    => 'root',
  mode     => 644,
  }
 
}