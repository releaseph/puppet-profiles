class profile::tng::apache {

    file {'/mnt/data':
        ensure  => directory,
        seltype => 'httpd_sys_rw_content_t',
    }

    class {'::apache':
        docroot => '/mnt/data/www',
        require => File['/mnt/data/www'],
    }

    include ::apache::mod::php

}