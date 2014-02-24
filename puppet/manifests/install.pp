class install {

  $packages = [
    'php',
    'php-mysql',
    'vim-enhanced',
  ]

  package { $packages:
    ensure => latest,
    before => Class['apache'],
  }
  
}