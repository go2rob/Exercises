# =begin
# options = { font_size: 10, font_family: :Arial}
# options.default = "not in list"
# a = options
# puts a
# a[:bg_color] = 'majenta'
# puts a
# options[:font_indent] = 1.5
# options[:font_style] = 'xyz abc'
# puts options[:font_size]
# puts a
# puts options[:robin]
# puts a <=> options
# a_layout = Hash.new { |a_layout,elements| a_layout[elements] = [1, 2, 4, 5, 7] } 

# puts a_layout["elements"]
# =end
# # a = [1,2,3,4].zip(['a', 'b', 'c'], ['x', 'y', 'z', 'p'])

# # puts "#{a}"
# movies = {
#   Memento: 3,
#   Primer: 4,
#   Ishtar: 1
# }

# puts "What would you like to do?"
# puts "-- Type 'add' to add a movie."
# puts "-- Type 'update' to update a movie."
# puts "-- Type 'display' to display all movies."
# puts "-- Type 'delete' to delete a movie."

# choice = gets.chomp.downcase
# case choice
# when 'add'
#   puts "What movie do you want to add?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "What's the rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been added with a rating of #{rating}."
#   else
#     puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
#   end
# when 'update'
#   puts "What movie do you want to update?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     puts "What's the new rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been updated with new rating of #{rating}."
#   end
# when 'display'
#   movies.each do |movie, rating|
#     puts "#{movie}: #{rating}"
#   end
# when 'delete'
#   puts "What movie do you want to delete?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     movies.delete(title.to_sym)
#     puts "#{title} has been removed."
#   end
# else
#   puts "Sorry, I didn't understand you."
# end

# a = []
# [1, 1.1, 2, 2.7, 3.7, 7].each {|x| a.push(x)if x.respond_to?(:next) }
# puts "#{a}"

# x = "Robinson "
# x << "loves " << "Inception " << "movie "
# puts x

# $VERBOSE = nil    # We'll explain this at the end of the lesson.
# require 'prime'   # This is a module. We'll cover these soon!

# def first_n_primes(n)

#   unless n.is_a? Integer
#     return "n must be an integer."
#   end

#   if n <= 0
#     return "n must be greater than 0."
#   end
  
#   prime_array = [] if prime_array.nil?
  
#   prime = Prime.new
#   for num in (1..n)
#     prime_array.push(prime.next)
#   end
#   return prime_array
# end

# first_n_primes(10)

# puts %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
# puts %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
# puts [nil, true, 99].all?                              #=> false
# puts [].all?                                           #=> true

# [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n| # => review_must
#   n.even?
# }.each { |even, ary|
#   p [even, ary]
# [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n|
#   n == 1
# }.each { |even, ary|

#   p [even, ary]
# }
# # x = 5
# ad = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] << 11
# # ad.pop
# ad.cycle(1.9999999999999999){|x| p x}

# def factorial(n)
#   n == 0? 1: (1..n).reduce(:*) #{ |sum, n| sum + n }
# end
# p factorial(8)

# p (5..10).reduce(02152.to_i, :*)

# list_type_1 = ['Anonymous','Balagan','Chaotic','disorder','evolving','frenzy','gory','hue','infinitely','jam','khaos','love','mad','nested','omni','puny','quest','random','sophisticated','toggling','universal','venomous','wacky','x','yacy','zipping']
# words = ('a'..'z').to_a+list_type_1
# words.sort!{|a,b| a.downcase <=> b.downcase}
# hash = Hash[*words].to_h
# hash = hash.inject({}) {|memo,(k,v)| memo[k.to_sym] = v; memo}
