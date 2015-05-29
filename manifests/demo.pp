class install_rbenv::demo {
  rbenv::build { '2.2.1': 
    global => true 
  }
}