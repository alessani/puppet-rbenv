class install_rbenv::face {
  rbenv::build { '2.4.1': 
    global => true 
  }
}