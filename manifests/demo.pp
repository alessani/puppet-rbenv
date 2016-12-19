class install_rbenv::demo {
  rbenv::build { '2.3.3': 
    global => true 
  }
}