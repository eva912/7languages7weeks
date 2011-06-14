File.open('tree.rb').each_with_index do |line, line_number|
  puts "#{line_number}: #{line}" if line =~ /tree/
end
