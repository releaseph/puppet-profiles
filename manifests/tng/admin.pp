class profile::tng::admin(
    $url = undef,
) {

    apache::vhost {"$url":
        port        => '80',
        docroot     => '/mnt/data/www/admin.cambridge.edu.au',
        directories => [{
            path           => '/mnt/data/www/admin.cambridge.edu.au',
            options        => ['Indexes','FollowSymLinks'],
            allow_override => ['All'],
            order          => 'Allow,Deny',
            allow          => 'from all',
        }],
    }

}
