class install {

  $packages = [
    'mysql-server',
    'httpd',
    'php',
    'php-mysql',
    'vim-enhanced',
  ]

  package { $packages:
    ensure => latest,
  }
  
}