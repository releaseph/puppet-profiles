class profile::tng_admin {

    include apache
    include apache::mod::php
    include php
    include mysql::client

}
