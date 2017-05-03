class profile::devops::puppetserver (
    $xms         = undef,
    $xmx         = undef,
    $maxpermsize = undef,
){
    class { 'puppetserver::repository': 
    } ->

    class { 'puppetserver':
        config => {
            'java_args' => {
                'xms'         => $xms,
                'xmx'         => $xmx,
                'maxpermsize' => $maxpermsize,
            },
        },
    }
}