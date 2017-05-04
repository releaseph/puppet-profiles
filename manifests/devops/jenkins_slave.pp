class profile::devops::jenkins_slave {

	class { 'docker':
		tcp_bind        => ['tcp://0.0.0.0:4243'],
	}
}