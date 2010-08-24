class upstart {
    package { upstart:
        ensure => installed,
    }
}

define upstart::job($description = '', $fork=false, $cmd='', $use_script=false) {
    file { "/etc/init/${title}.conf":
        content => template('upstart/job.conf.erb'),
        ensure => present
    }
}
