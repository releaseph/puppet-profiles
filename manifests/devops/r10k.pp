### Class profile::devops::r10k
# Installs and configures r10k

class profile::devops::r10k (
    $control_repo = undef,
){
    class { 'r10k':
        remote => $control_repo,
    }

    ### TODO - Ensure that the puppet-provided ruby is at least 2.2 before removing this package call
    # The latest version of Sinatra (2.0.0) requires Ruby 2.2, but Puppet-provided Ruby is only 2.1
    # System Ruby can't be used without updating the webhook (since webhook relies on puppet_gem starting puppet 4.10.0)
    package { 'sinatra':
        ensure   => '1.4.8',
        provider => 'puppet_gem',
    } ->
    ### End of TODO

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
