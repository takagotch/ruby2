require 'abbrev'

COMMANDS = %w{ sample send start status stop }.abbrev

while line = gets
  line = line.chomp

  case COMMANDS[line]
  when "sample" then
  when "send" then
  else
    STDERR.puts "Unknown command: #{line}"
  end
end

