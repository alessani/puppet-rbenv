class install_rbenv::staging {
  rbenv::build { '2.3.0': 
    global => true 
  }
  
  rbenv::plugin { 'dcarley/rbenv-sudo': }
}