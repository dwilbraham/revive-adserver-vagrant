class service {

  service { 'httpd':
    ensure  => 'running',
    require => Class['install'],
  }
  
  service { 'mysqld':
    ensure  => 'running',
    require => Class['install'],
  }
  
  service { 'iptables':
    ensure  => 'stopped',
    require => Class['install'],
  }
  
}