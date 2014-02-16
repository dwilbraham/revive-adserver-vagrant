class service {

  service { 'httpd':
    ensure  => 'running',
    enable  => true,
    require => Class['install'],
  }
  
  service { 'mysqld':
    ensure  => 'running',
    enable  => true,
    require => Class['install'],
  }
  
  service { 'iptables':
    ensure  => 'stopped',
    enable  => false,
  }
  
}