class install_rbenv::quasar {
  rbenv::build { '2.2.2': 
    global => true 
  }
}
