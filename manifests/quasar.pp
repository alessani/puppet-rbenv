class install_rbenv::face {
  rbenv::build { '2.2.2': 
    global => true 
  }
}