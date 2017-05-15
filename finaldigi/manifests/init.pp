class pakettimoduuli {

        package { brackets:
                ensure => 'installed',
                allowcdrom => 'true',
        }

	package { apache2:
                ensure => 'installed',
                allowcdrom => 'true',
	}
	
	exec{'bootstrap':
                command => "/usr/bin/wget -q https://github.com/twbs/bootstrap/releases/download/v3.3.7/bootstrap-3.3.7-dist.zip",
                creates => "/home/xubuntu/bootstrap",
        }

        file{'/home/xubuntu/bootstrap':
                mode => 0755,
                require => Exec["bootstrap"],
        }

}
