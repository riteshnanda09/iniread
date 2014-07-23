# == Class: iniread
#
# Full description of class iniread here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { iniread:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class iniread {
$pathname   = '/etc/puppetlabs/puppet/modules/iniread/lib/puppet/parser/functions'
$InstPath   	= inireadvalue("$pathname/itlm.ini", "Program", "path")
$Install    	= inireadvalue("$pathname/itlm.ini", "Program", "Install")
$PkgIniVer  	= inireadvalue("$pathname/itlm.ini", "Regkeys", "value5")
$PkgZipDTC  	= inireadvalue("$pathname/itlm.ini", "Regkeys", "value4")
$PKGVersion 	= inireadvalue("$pathname/itlm.ini", "Regkeys", "value3")
$ProdVersion	= inireadvalue("$pathname/itlm.ini", "Regkeys", "value2")
$ProdInstDTC 	= inireadvalue("$pathname/itlm.ini", "Regkeys", "value1")
notify {"Test value":
    name     => "Value are '$InstPath' '$Install' '$PkgIniVer' '$PkgZipDTC' '$PKGVersion' '$ProdVersion' '$ProdInstDTC'",
}


}
