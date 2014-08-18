class install_rbenv {
  class { 'rbenv':
    install_dir => '/home/ubuntu/.rbenv',
    owner => 'ubuntu'
  }
  rbenv::plugin { 'sstephenson/ruby-build': latest => true}
  rbenv::build { '2.0.0-p481': 
    global => true,
    notify => File["update permission to rbenv version"]
  }

  file {"update permission to rbenv version":
    path => '/home/ubuntu/.rbenv/version',
    owner => "ubuntu",
    group => "adm"
  }

  # needed for mysql2
  package {'libmysqlclient-dev':}
 
}