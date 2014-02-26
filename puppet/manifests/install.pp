class install {

  $packages = [
    'php',
    'php-mysql',
    'vim-enhanced',
    'mod_ssl',
  ]

  package { $packages:
    ensure => latest,
    before => Class['apache'],
  }
  
}
