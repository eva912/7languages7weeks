array = (1..16).to_a

count = 0
array.each do |element|
  print "#{element} "
  count += 1
  if count == 4
    puts
    count = 0
  end
end

array.each_with_index do |element, count|
  print "#{element} "
  puts if (count + 1) % 4 == 0
end

array.each_slice(4) { |slice| puts slice.join(' ') }
