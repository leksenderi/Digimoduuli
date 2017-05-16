class pakettimoduuli {

        package { brackets:
                ensure => 'installed',
                allowcdrom => 'true',
        }

        package { apache2:
                ensure => 'installed',
                allowcdrom => 'true',
        }

        exec { 'openBrackets':
                command => '/usr/bin/brackets &',
                require => Package['brackets'],
        }
}
