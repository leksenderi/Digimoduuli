class pakettimoduuli {
        
        exec {'apt-get update':
                command => '/usr/bin/apt-get update',
                refreshonly => true,
                }

        package { brackets:
                ensure => 'installed',
                require => Exec['apt-get update'],
                allowcdrom => 'true',
        }

        package { apache2:
                ensure => 'installed',
                require => Exec['apt-get update'],
                allowcdrom => 'true',
        }

        exec { 'openBrackets':
                command => '/usr/bin/brackets &',
                require => Package['brackets'],
        }
}
