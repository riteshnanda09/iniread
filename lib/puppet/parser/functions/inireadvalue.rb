#using require_relative to include  inifile parser gem kept in the current directory
require_relative 'inifile'

Puppet::Parser::Functions.newfunction(
  :inireadvalue, :type => :rvalue,
  :arity => 3,
  :doc => "Reads an .ini file and...") do |args|
	filename = args[0]
        section = args[1]
        key = args[2]

if !File.exist?(filename)
 
raise(Puppet::ParseError, 'inireadvalue(): Path and file provided does not  exists ' +
      'Provide the correct path')
end

fileload = IniFile.load(filename)
        data = fileload[section]
        value = data[key]
        return value


      end

