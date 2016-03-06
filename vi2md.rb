filename = ARGV.first
abort("Error! Too much arguments, or no argument. Usage: ruby vi2md.rb <filename>.") if ARGV.length != 1

f = File.new('new_' + filename,'w')
IO.foreach(filename) do |line|
    f.puts line.strip.gsub(/^\d/,'').gsub(/^\s/,'')
end
f.close

p "Done, the new filename is " + 'new_' + filename
