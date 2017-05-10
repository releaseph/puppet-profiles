### Class profile:cjo::application
# Setup CJO application

class profile::cjo::application {

    group { 'cjogroup':
        ensure => present,
    }

    -> user { 'cjo':
        ensure => present,
        groups => [ 'cjogroup' ],
    }

    file { '/app/jboss-5.1.0GA/conf/SystemApplicationProperties.properties':
        ensure => file,
        group  => 'cjogroup',
        owner  => 'cjo',
    }

}