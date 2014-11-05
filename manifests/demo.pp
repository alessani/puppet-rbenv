class install_rbenv::demo {
  rbenv::build { '2.1.4': 
    global => true 
  }
}