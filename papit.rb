#require 'net/http'
#require 'uri'
#require 'json'
require 'pry' # For debugging

puts "################"
puts "Puppet API Tool"
puts "################"

puts "Enter the API token: "
puts '(you may need to run "puppet acces login" to generate this)'
token = gets

puts "Enter the hostname: "
puts "(e.g. localhost)"
hostname = gets.gsub("\n",'')
hostname = hostname.empty? ? "localhost" : hostname
puts hostname

binding.pry
