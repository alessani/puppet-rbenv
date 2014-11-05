class install_rbenv::staging {
  rbenv::build { '2.1.4': 
    global => true 
  }
}