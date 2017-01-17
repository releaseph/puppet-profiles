class profile::tng::go(
    $url = hiera('tng::go::url'),
) {

    apache::vhost {"$url":
        port        => '80',
        docroot     => '/mnt/data/www/tng.cambridge.edu.au',
        directories => [{
            path           => '/mnt/data/www/tng.cambridge.edu.au',
            options        => ['Indexes','FollowSymLinks'],
            allow_override => ['All'],
            order          => 'Allow,Deny',
            allow          => 'from all',
        }],
    }

    package {'cup-tng-go':
        ensure => 'present',
    }

}
