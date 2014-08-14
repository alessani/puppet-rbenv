class install_rbenv {
  class { 'rbenv':
    install_dir => '/opt/rbenv'
  }
  rbenv::plugin { 'sstephenson/ruby-build': latest => true}
  rbenv::build { '2.0.0-p481': 
    global => true 
  }
 
}