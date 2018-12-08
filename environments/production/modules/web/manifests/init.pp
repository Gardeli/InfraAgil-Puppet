class web {

  case $::osfamily {
    
    "Debian": {
      $web = ['apache2','mysql-server']
    }

    "RedHat": {
      $web = ['http','mysql-server']
    }

  }

  package { $web:
    ensure => present
  }

  file { '/var/www/html/index.html':
  source => 'puppet:///modules/web/index.html', 
  ensure => present
  }

  service { '$web:
    ensure => running
  }

}
