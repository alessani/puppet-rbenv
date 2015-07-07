class install_rbenv::quasar {
  rbenv::build { '2.2.2': 
    global => true 
  }

  rbenv::plugin { 'dcarley/rbenv-sudo': }
  
  class {'passenger':
      passenger_version      => '5.0.13',
      passenger_provider     => 'gem',
      passenger_package      => 'passenger',
      gem_path               => '/home/ubuntu/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems',
      gem_binary_path        => '/home/ubuntu/.rbenv/versions/2.2.2/bin',
      passenger_root         => '/home/ubuntu/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/passenger-5.0.13',
      mod_passenger_location => '/home/ubuntu/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/passenger-5.0.10/buildout/apache2/mod_passenger.so',
      include_build_tools    => true,
    }
    
  Rbenv::Build['2.2.2'] -> Class[Passenger]

}
