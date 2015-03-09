class install_rbenv::tesco {
  rbenv::build { '2.2.1': 
    global => true 
  }
}