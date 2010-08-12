class upstart {
    # git clone git://github.com/edavis10/redmine.git
    # git checkout -b remotes/origin/0.9-stable
    # /var/www/redmine (or /srv/redmine)
    package { upstart:
        ensure => installed,
    }
}

define upstart::job($description = '', $fork=false, $exec = null, $script = null) {
    file { "/etc/init/upstart-${title}.conf":
        content => template('upstart/job.conf.erb'),
	ensure => present
    }
}
