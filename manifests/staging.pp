class install_rbenv::staging {
  rbenv::build { '2.2.0': 
    global => true 
  }
}