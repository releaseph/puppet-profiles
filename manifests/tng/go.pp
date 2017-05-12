### Class profile::tnd::admin
# Setup TNG Go application

class profile::tng::go(
    $url = hiera('tng::go::url'),
) {
    include ::profile::tng::apache
    include ::profile::base::tdrepo

    apache::vhost {$url:
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

    file {'/mnt/data/www/tng.cambridge.edu.au':
        ensure => directory,
    }

    # package {'cup-tng-go':
    #     ensure => 'present',
    # }

}
