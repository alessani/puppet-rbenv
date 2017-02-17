class install_rbenv::quasar {
  rbenv::build { '2.3.3': 
    global => true 
  }

  rbenv::build { '2.2.2': }

  rbenv::plugin { 'dcarley/rbenv-sudo': }
  
  rbenv::gem {'passenger':
    version => '5.1.2',
    ruby_version => '2.3.3'
  }
  
  class {'passenger':
      passenger_version      => '5.1.2',
      passenger_provider     => 'gem',
      passenger_package      => 'passenger',
      gem_path               => '/home/ubuntu/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems',
      gem_binary_path        => '/home/ubuntu/.rbenv/versions/2.3.3/bin',
      passenger_root         => '/home/ubuntu/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/passenger-5.1.2',
      passenger_ruby         => '/home/ubuntu/.rbenv/versions/2.3.3/bin/ruby',
      mod_passenger_location => '/home/ubuntu/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/passenger-5.1.2/buildout/apache2/mod_passenger.so',
      include_build_tools    => false,
    }
    
  Rbenv::Build['2.3.3'] -> Rbenv::Gem['passenger'] -> Class[Passenger]

}
