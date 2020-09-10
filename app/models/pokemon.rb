require 'tty-prompt'

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
        starter_choice = prompt.select("Choose one:") do |menu|
            menu.choice pastel.green("Bulbasaur")
            menu.choice pastel.cyan("Squirtle")
            menu.choice pastel.red("Charmander")
        end
        starter = UserPokemon.create(user_id: User.last.id, pokemon_id: starter_choice.id)

            
            # if bulb == true 
            #     starter_confirmation_grass = prompt.yes?("The Seed Pokemon! Are you sure?")
            #         if starter_confirmation_grass == true 
            #             add_pokemon_to_pokedex(bulbasaur)
            #         else 
            #             starter_pokemon
            #         end
            # elsif squirt == true
            #     starter_confirmation_water = prompt.yes?("The Tiny Turtle Pokemon! Are you sure?")
            #     if starter_confirmation_water == true 
            #         add_pokemon_to_pokedex(squirtle)
            #     else 
            #         starter_pokemon
            #     end
            # elsif char == true
            #     starter_confirmation_fire = prompt.yes?("The Lizard Pokemon! Are you sure?")
            #     if starter_confirmation_fire == true 
            #         add_pokemon_to_pokedex(charmander)
            #     else 
            #         starter_pokemon
            #     end
            # end
        puts "Congratulations! You've captured #{starter.name}!"
    end

end