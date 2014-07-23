iniread
=======

Puppet module to read a ini file and return the key value to a variable

This module uses inifile gem , which helps to parse and read values to a variable.

It implements a function inireadvalue

Usage:


$val = inireadvalue("$pathname/<example>.ini", "<section>", "<key>")

Would give the key value to val variable.

Example usage:

/etc/example.ini

[Program]
CreatedBy=BJS
DateCreated=3/31/2011
LastModDate=2/20/2012
[INFO]
AimVersion=1.0
Itemcount=1
[Check1]
Type=regcheck
Command1=RegExistKey(@RegMachine,"SOFTWARE\McAfee\AVEngine")
Value1=1


init.pp

$pathname = '/etc/example.ini'

$val1 = inireadvalue("$pathname/example.ini", "Program", "CreatedBy")
$val2 = inireadvalue("$pathname/example.ini", "INFO", "Itemcount")
$val3 = inireadvalue("$pathname/example.ini", "Check1", Type")

notify {"values":
    name     => "Value are '$val1' '$val2' '$val3'",
}



