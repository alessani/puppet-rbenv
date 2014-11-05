class install_rbenv::tesco {
  rbenv::build { '2.1.4': 
    global => true 
  }
}