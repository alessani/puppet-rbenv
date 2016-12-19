class install_rbenv::staging {
  rbenv::build { '2.3.3': 
    global => true 
  }
  
  rbenv::plugin { 'dcarley/rbenv-sudo': }
}