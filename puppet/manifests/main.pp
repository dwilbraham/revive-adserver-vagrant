import 'install.pp'
import 'service.pp'
import 'revive.pp'

include 'install'
include 'service'

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

#apache::vhost { 'revive.example.com':
#  port    => '80',
#  docroot => '/var/www/revive',
#}

include 'revive'
