require 'tty-prompt'

class User < ActiveRecord::Base
    has_many :userpokemons
    has_many :pokemons, through: :userpokemons


    def self.intro_name
        prompt = TTY::Prompt.new
        input = prompt.ask("What is your name?", required: true)
        User.create(name: input)
        prompt.yes?("So... #{User.last.name}, is it? Are you sure?")
        name_choice = gets.chomp
            if  name_choice == false
                puts "Sorry!"
                self.intro_name
            else
                puts "Yes! I remember now! Your name is #{User.last.name}!"
            end
        puts "And now..."
    end

end

