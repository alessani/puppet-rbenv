class install_rbenv::tesco {
  rbenv::build { '2.3.0': 
    global => true 
  }
}