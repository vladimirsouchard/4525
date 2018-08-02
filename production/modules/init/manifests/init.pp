class init {

	file{	"/etc/puppetlabs/puppet/puppet.conf":
		source => "puppet:///modules/init/puppet.conf",
		ensure => present,

}

case $::osfamily {
"RedHat": {

$pacotes = [ "vim","htop","sysstat","epel-release" ]

}

"Debian": {

$pacotes = [ "vim","htop","sysstat","figlet" ]
exec{ "atualizar_repositorio":
	command => "/usr/bin/apt update"

}
}
}
package{ $pacotes:
	ensure => present,
}

$user = [ "devops","suporte" ]
user{ $user:
	ensure => present,
}

}
