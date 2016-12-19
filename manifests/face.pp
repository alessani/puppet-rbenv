class install_rbenv::face {
  rbenv::build { '2.3.3': 
    global => true 
  }
}