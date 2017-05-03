class profile::devops::r10k (
    $control_repo = undef,
){
    class { 'r10k':
        remote   => $control_repo,
        provider => 'gem',
    }

    class { 'r10k::webhook::config':
        use_mcollective => false,
        enable_ssl      => false,
    }

    class { 'r10k::webhook':
        user            => 'root',
        group           => '0',
        use_mcollective => false,
        require         => Class['r10k::webhook::config'],
    }
}
