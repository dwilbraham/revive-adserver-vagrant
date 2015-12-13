include 'install'
include 'service'
include 'revive'

include '::mysql::server'
#include '::mysql::server::account_security'

mysql::db { 'revivedb':
  user     => 'revive',
  password => 'revive123',
  host     => 'localhost',
  grant    => ['ALL PRIVILEGES'],
}

include '::apache'
include '::apache::mod::php'
include '::apache::mod::ssl'

apache::vhost { "${::ipaddress_eth1}_ssl":
  servername => "${::ipaddress_eth1}",
  port       => '443',
  docroot    => '/var/www/revive',
  ssl        => true,
  require => Exec['Move revive code'],
}
apache::vhost { "${::ipaddress_eth1}_non-ssl":
  servername      => "${::ipaddress_eth1}",
  port            => '80',
  docroot         => '/var/www/revive',
  redirect_status => 'permanent',
  redirect_dest   => "https://${::ipaddress_eth1}/",
  require => Exec['Move revive code'],
}
