class install_rbenv::staging {
  rbenv::build { '2.0.0-p594': 
    global => true 
  }
}