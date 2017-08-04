class install_rbenv::demo {
  rbenv::build { '2.4.1': 
    global => true 
  }
}