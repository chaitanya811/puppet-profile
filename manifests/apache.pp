class profile::apache(
 Boolean $default_vhost = true,
 Hash $apache_vhost_servers,
# Integer $port = 80,
# String $docroot = '/var/www/test',
) {
  class { '::apache':
    default_vhost => $default_vhost,
}
create_resources(::apache::vhost, $apache_vhost_servers)

  #::apache::vhost { 'chandu8115.mylabserver.com' :
  #   port    => $port,
   #  docroot => $docroot,
#}
}
