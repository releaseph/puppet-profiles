class profile::tng::apache {

    file {'/mnt':
        ensure => directory,
    }

    file {'/mnt/data':
        ensure  => directory,
        require => File['/mnt'],
    }

    file {'/mnt/data/www':
        ensure  => directory,
        seltype => 'httpd_sys_rw_content_t',
        require => File['/mnt/data'],
    }

    class {'::apache':
        docroot => '/mnt/data/www',
        require => File['/mnt/data/www'],
    }

    include ::apache::mod::php

}