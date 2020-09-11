require 'tty-prompt'
require 'tty-box'

class Pokemon < ActiveRecord::Base
    has_many :attacks
    belongs_to :user

    def self.add_pokemon_to_pokedex(poke)
        UserPokemon.create(user_id: player.id, pokemon_id: poke.id)
    end

    def self.starter_pokemon
        prompt = TTY::Prompt.new       
        pastel = Pastel.new 
        puts "I have three Pokemon in front of me..."
        options = [pastel.green("Bulbasaur"), pastel.cyan("Squirtle"), pastel.red("Charmander")] 
        starter_choice = prompt.select("Choose one:", options)
            if starter_choice == "Bulbasaur"
                UserPokemon.create(user_id: User.last.id, pokemon_id: bulbasaur.id)
            elsif starter_choice == "Squirtle"
                UserPokemon.create(user_id: User.last.id, pokemon_id: squirtle.id)
            elsif starter_choice == "Charmander"
                UserPokemon.create(user_id: User.last.id, pokemon_id: charmander.id)
            end
        sleep(1)
        print TTY::Box.frame { pastel.green("Congratulations! You've captured #{starter_choice}!") }
        sleep(2)
        puts "Now that you have your starter..."
        sleep(2)
        puts "I have a task for you #{User.last.name}."
        sleep(2)
        puts "I need you to complete this Pokedex!"
        sleep(2)
        print TTY::Box.frame pastel.red("Prof. Oak has given you a Pokedex!\nYou put the Pokedex in your bag.") 
        sleep(2)
        puts "You need to go out and catch all 151 pokemon!"
        sleep(2)
        puts "In order to do so, you must visit various locations and catch wild pokemon!"
        sleep(2)
        prompt.yes?("Are you ready?")
        sleep (3)
    end

end