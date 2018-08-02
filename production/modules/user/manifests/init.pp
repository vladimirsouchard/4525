class user {

user { 	"judith":
	ensure => 'present',
	managehome => 'true',
	shell => '/bin/bash',
	home => '/srv/ju',
	
}

user {	"jorge":
	ensure => 'present',
        managehome => 'true',
        shell => '/bin/bash',
        home => '/srv/jorge',
}
}
