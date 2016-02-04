class install_rbenv::demo {
  rbenv::build { '2.3.0': 
    global => true 
  }
}