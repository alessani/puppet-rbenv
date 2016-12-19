class install_rbenv::quasar {
  rbenv::build { '2.3.3': 
    global => true 
  }

  rbenv::plugin { 'dcarley/rbenv-sudo': }
  
  rbenv::gem {'passenger':
    version => '5.0.13',
    ruby_version => '2.2.2'
  }
  
  class {'passenger':
      passenger_version      => '5.0.13',
      passenger_provider     => 'gem',
      passenger_package      => 'passenger',
      gem_path               => '/home/ubuntu/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems',
      gem_binary_path        => '/home/ubuntu/.rbenv/versions/2.2.2/bin',
      passenger_root         => '/home/ubuntu/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/passenger-5.0.13',
      passenger_ruby         => '/home/ubuntu/.rbenv/versions/2.2.2/bin/ruby',
      mod_passenger_location => '/home/ubuntu/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/passenger-5.0.13/buildout/apache2/mod_passenger.so',
      include_build_tools    => false,
    }
    
  Rbenv::Build['2.2.2'] -> Rbenv::Gem['passenger'] -> Class[Passenger]

}
