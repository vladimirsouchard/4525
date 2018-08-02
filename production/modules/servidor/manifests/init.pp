class servidor {

	file{   "/var/www/html/index.html":
                source => "puppet:///modules/servidor/index.html",
                ensure => present,

}

case $::osfamily {
"RedHat": {

$pacotes = [ "vim","htop","epel-release","httpd" ]

}

"Debian": {

$pacotes = [ "htop","sysstat","figlet","apache2" ]
exec{ "atualizar_repo":
        command => "/usr/bin/apt update"

}
package{ $pacotes:
        ensure => present,
}
}
}
$user = [ "devops","suporte","devolps","backup" ]
user{ $user:
        ensure => present,
}

}
