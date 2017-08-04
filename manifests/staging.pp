class install_rbenv::staging {
  rbenv::build { '2.4.1': 
    global => true 
  }
  
  rbenv::plugin { 'dcarley/rbenv-sudo': }
  
  rbenv::gem { 'bundler': 
    ruby_version => '2.3.3'
  }
}