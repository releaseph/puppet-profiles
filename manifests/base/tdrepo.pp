class profile::base::tdrepo {
	
	yumrepo {'tdrepo':
		descr    => 'CUP Custom Packages',
		baseurl  => 'http://tdrepo.aws.cambridge.org/',
		enabled  => '1',
		gpgcheck => '0',
		priority => '1',
	}

}