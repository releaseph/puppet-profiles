class profile::devops::jenkins (
	$ensure = undef,
}{

	include java
	include wget

	wget::fetch { 'jenkins-repo':
		source => 'http://pkg.jenkins-ci.org/redhat/jenkins.repo',
		destination => '/etc/yum.repos.d/jenkins.repo',
	} ~>

	exec { 'import-jenkins-key':
		command     => '/bin/rpm/ --import https://jenkins-ci.org/redhat/jenkins-ci.org.key',
		refreshonly => true,
	} ->

	package { 'jenkins':
		ensure => $ensure,
	}
}