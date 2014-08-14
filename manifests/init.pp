class install_rbenv {
  class { 'rbenv':
    install_dir => '/home/ubuntu/.rbenv',
    owner => 'ubuntu'
  }
  rbenv::plugin { 'sstephenson/ruby-build': latest => true}
  rbenv::build { '2.0.0-p481': 
    global => true 
  }

  # needed for mysql2
  package {'libmysqlclient-dev':}
 
}