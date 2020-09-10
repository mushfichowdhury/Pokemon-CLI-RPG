require 'tty-prompt'

class User < ActiveRecord::Base
    has_many :userpokemons
    has_many :pokemons, through: :userpokemons


    def self.intro_name
        prompt = TTY::Prompt.new
        input = prompt.ask("What is your name?", required: true)
        player = User.create(name: input)
        prompt.yes?("So... #{player.name}, is it? Are you sure?")
        name_choice = gets.chomp
            if name_choice == false
                puts "Sorry!"
                intro_name
            else
                puts "Yes! I remember now! Your name is #{player.name}!"
            end
        player
    end

end

#   #{User.find_by(name: input).name}
#   #{User.name}.last

