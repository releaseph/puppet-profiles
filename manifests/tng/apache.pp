### Class profile::tng::apache
# Setup Apache for use with TNG applications

class profile::tng::apache {

    file {'/mnt/data':
        ensure  => directory,
        seltype => 'httpd_sys_rw_content_t',
    }

    class {'::apache':
        docroot => '/mnt/data/www',
        require => File['/mnt/data'],
    }

    include ::apache::mod::php

}