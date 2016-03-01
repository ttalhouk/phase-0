puts "Hi there, please tell me your first name..."
first_name=gets.chomp
puts "Thanks, what is your middle name?"
middle_name=gets.chomp
puts "And your last name?"
last_name=gets.chomp

puts "Nice to meet you "+first_name+" "+middle_name+" "+last_name+"!"

puts "What is your favorite number "+first_name
fav_num=gets
puts "That\'s good but "+(fav_num.to_i+1).to_s+" is one bigger!"

=begin
https://github.com/ttalhouk/phase-0/blob/master/week-4/address/my_solution.rb

=end