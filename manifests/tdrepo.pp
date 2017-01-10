class profile::tdrepo {
	
	yumrepo {'tdrepo':
		name     => 'CUP Custom Packages',
		baseurl  => 'http://tdrepo.aws.cambridge.org/',
		enabled  => '1',
		gpgcheck => '0',
		priority => '1',
	}

}