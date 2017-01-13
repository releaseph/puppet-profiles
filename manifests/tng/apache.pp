class profile::tng::apache {

    file {'/mnt':
        ensure => directory,
    }

    file {'/mnt/data':
        ensure  => directory,
        require => File['/mnt'],
    }

    class {'::apache':
        docroot => '/mnt/data/www',
        require => File['/mnt/data'],
    }

}