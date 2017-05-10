### Class profile:cjo::application
# Setup CJO application

class profile::cjo::application {

    puppet_config::java_property { 'uhy_bib_supplementery_id':
        file  => '/app/jboss-5.1.0.GA/conf/SystemApplicationResources.properties',
        key   => 'uhy_bib_supplementary_id',
        value => hiera('cjo::uhy_bib_supplementary_id'),
    }

}