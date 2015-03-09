class install_rbenv::staging {
  rbenv::build { '2.2.1': 
    global => true 
  }
}