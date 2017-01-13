class profile::tng::tng_admin {

    include apache
    include apache::mod::php
    include php
    include mysql::client

    apache::vhost {'admin.dev.test.cambridge.org':
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
