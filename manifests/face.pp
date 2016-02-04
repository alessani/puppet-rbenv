class install_rbenv::face {
  rbenv::build { '2.3.0': 
    global => true 
  }
}