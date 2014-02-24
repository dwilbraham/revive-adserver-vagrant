class revive {
  $revive_version = '3.0.2'

  exec { 'Fetch revive tar':
    command => "wget http://download.revive-adserver.com/revive-adserver-${revive_version}.tar.gz",
    creates => "/root/revive-adserver-${revive_version}.tar.gz",
    cwd     => '/root/',
    path    => '/usr/bin',
  }
  
  exec { 'Unpack revive tar':
    command => "tar -xzf /root/revive-adserver-${revive_version}.tar.gz",
    creates => "/root/revive-adserver-${revive_version}",
    cwd     => '/root/',
    path    => '/bin',
    require => Exec['Fetch revive tar'],
  }
  
  exec { 'Move revive code':
    command => "mv /root/revive-adserver-${revive_version} /var/www/html/revive",
    creates => '/var/www/html/revive',
    cwd     => '/root/',
    path    => '/bin',
    require => Exec['Unpack revive tar'],
  }
  
}