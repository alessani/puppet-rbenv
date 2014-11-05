class install_rbenv::face {
  rbenv::build { '2.1.4': 
    global => true 
  }
}