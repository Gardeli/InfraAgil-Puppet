node "default" {
  class { 'zabbix::agent':
    server => 'zabbix.dexter.com.br',
  }

  include web
  include config

}
