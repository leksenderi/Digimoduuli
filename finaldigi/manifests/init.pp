class pakettimoduuli {
          
        package { brackets:
                ensure => 'installed',
                allowcdrom => 'true',
        }

        package { apache2:
                ensure => 'installed',
                allowcdrom => 'true',
        }
}
