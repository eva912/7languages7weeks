x=1
while x<=10
  puts "This is sentence number #{x}"
  x=x+1
end

puts '---'


max = 10
random = rand(max) + 1

puts "Guess a number between 1 and #{max}"

guess = nil
until guess == random do
  guess = gets.to_i
  puts "#{guess} is too low" if guess < random
  puts "#{guess} is too high" if guess > random
end

puts "#{guess} is correct"
