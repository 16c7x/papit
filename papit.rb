#require 'net/http'
#require 'uri'
#require 'json'
require 'pry' # For debugging

def welcome()
  puts "################"
  puts "Puppet API Tool"
  puts "################"
end

def menu()
  puts "Enter the API token: "
  puts '(you may need to run "puppet acces login" to generate this)'
  token = gets

  puts "Enter the hostname: "
  puts "(e.g. localhost)"
  hostname = gets.gsub("\n",'')
  hostname = hostname.empty? ? "localhost" : hostname

  return token, hostname
end

def action()
  puts "what do you want to do?"
  puts "[1] get something"
  puts "[2] put something"
  puts "[q] exit"
  puts "select: "

  action = gets

  case action.strip
  when "1"
    puts "get?"
  when "2"
    puts "get?"
  else
    puts "exiting"
  end
end

welcome()
token, hostname = menu()
puts token
puts hostname

action = action()
puts action

#binding.pry
