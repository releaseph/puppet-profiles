### Class profile:cjo::application
# Setup CJO application

class profile::cjo::application {
	
	puppet_config::config_file { 'SystemApplicationProperties':
		filename  => 'SystemApplicationProperties.properties',
		directory => '/app/jboss-5.1.0GA/conf',
		owner     => 'cjo',
		group     => 'cjogroup',
	}

}