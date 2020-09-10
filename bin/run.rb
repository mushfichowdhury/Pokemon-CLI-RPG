require_relative '../config/environment'
require 'poke-api-v2'
require 'pry'

def intro_name
    puts "What is your name?"
    user_name_input = gets.chomp
    User.create(name: user_name_input)
    puts "So... #{name}, is it? Are you sure?"
    puts "1. Yes"
    puts "2. No"
    name_choice = gets.chomp
    if name_choice == "1"
        puts "Yes! I remember now! Your name is #{name}!" 
    else
        puts "Sorry!"
        intro_name
    end
end

def battle
    puts "Hello! Welcome to the wonderful world of Pokemon!"
    intro_name
    puts "And now..."
    puts "I have three Pokemon in front of me... choose one!"
    puts "1. The Seed Pokemon... Bulbasaur!"
    puts "2. The Tiny Turtle Pokemon... Squirtle!"
    puts "3. The Lizard Pokemon... Charmander!"
end

binding.pry



# def rival_name
    #     puts "Your rival! What was his/her name again?"
    #     puts "1. Caryn"
    #     puts "2. Sean"
    #     rival_name_choice = gets.chomp
    #     if rival_name_choice == "1"
    #         rival = "Caryn"
    #     elsif rival_name_choice == "2"
    #         rival = "Sean"
    #     else 
    #         puts "Ah! I don't think that's correct..."
    #         rival_name
    #     end
    #     puts "Yes! I remember now! Your rival is #{rival}!"
    # end