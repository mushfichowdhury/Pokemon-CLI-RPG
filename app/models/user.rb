require 'tty-prompt'

class User < ActiveRecord::Base
    has_many :userpokemons
    has_many :pokemons, through: :userpokemons


    def self.intro_name
        prompt = TTY::Prompt.new
        prompt.ask("What is your name?", required: true)
        input = gets.chomp
        User.create(name: input)
        prompt.yes?("So... #{User.find_by(name: input).name}, is it? Are you sure?")
        name_choice = gets.chomp
            if name_choice == false
                puts "Sorry!"
                intro_name
            else
                puts "Yes! I remember now! Your name is #{User.last.name}!"
            end
    end

end

#   #{User.find_by(name: input).name}
#   #{User.name}.last