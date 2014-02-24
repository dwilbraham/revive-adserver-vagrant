class service {

  service { 'iptables':
    ensure  => 'stopped',
    enable  => false,
  }
  
}