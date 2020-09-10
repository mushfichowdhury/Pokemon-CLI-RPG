require 'tty-prompt'
# require 'pry'

class PokemonRPG
    attr_reader :prompt, :pastel

    def initialize()
        @prompt = TTY::Prompt.new(active_color: :red)
        @pastel = Pastel.new
    end

    def starter_pokemon        
        puts "I have three Pokemon in front of me..." 
        prompt.select("Choose one:") do |menu|
            bulb = menu.choice pastel.green("Bulbasaur")
            squirt = menu.choice pastel.cyan("Squirtle")
            char = menu.choice pastel.red("Charmander")
            
            if bulb == true 
                starter_confirmation = prompt.yes?("The Seed Pokemon! Are you sure?")
                    if starter_confirmation == true 
                        add_pokemon_to_pokedex(bulbasaur)
                    else 
                        starter_pokemon
                    end
            elsif squirt == true
                starter_confirmation = prompt.yes?("The Tiny Turtle Pokemon! Are you sure?")
                if starter_confirmation == true 
                    add_pokemon_to_pokedex(squirtle)
                else 
                    starter_pokemon
                end
            elsif char == true
                starter_confirmation = prompt.yes?("The Lizard Pokemon! Are you sure?")
                if starter_confirmation == true 
                    add_pokemon_to_pokedex(charmander)
                else 
                    starter_pokemon
                end
            end
        end
    end

    def tall_grass
        puts "Welcome to Route 1!"
        tall_grass_choice = prompt.yes?("Do you want to walk around the grass?") do |menu|
            if tall_grass_choice == true 
                #generate random pokemon
                #pokemon battle method
            else 
                tall_grass_yes_no = prompt.yes?("Do you want to change location?")
                    if tall_grass_yes_no == true 
                        change_location
                    else 
                        tall_grass
                    end
            end
        end
    end
        
        
    def change_location
        puts "Where would you like to go?" 
        prompt.select("Choose one:") do |menu|
            easy = menu.choice pastel.white("Tall Grass")
            forst = menu.choice pastel.green("Forest")
            pwr = menu.choice pastel.yellow("Power Plant")
            volc = menu.choice pastel.red("Volcano")
            bch = menu.choice pastel.cyan("Beach")
    
            if easy == true 
                puts "An excellant location for those starting out; good luck on your journey!"
                    tall_grass
            elsif forst == true 
                puts "There are many Bug type Pokemon here. Don't forget your bug spray!"
                    forest
            elsif pwr == true
                puts "It is shocking how many Pokemon can be found at the plant!"
                    power_plant
            elsif volc == true
                puts "Hydration is key if you are to survive the volcano!"
                    volcano
            elsif bch == true
                puts "Surf's up!"
                    beach
            end
        end
    end


    def run
        puts "Hello! Welcome to the wonderful world of Pokemon!"
        User.intro_name
        puts "And now..."
        sleep(2)
        starter_pokemon 
        puts "Now that you have your starter..."
        sleep(2)
        change_location 
        # return "THANK YOU FOR PLAYING!"
    end
# binding.pry
end









#    def starter_location
#        UserPokemon.all.count
#        if UserPokemon.count == 1
#        "Welcome to the Tall Grass. You will come across many Pokemon here."
#    end


#     def change_location
#         UserPokemon.collect do |total|
#             if total.pokemon >= 5
#                 location == "Forest"
#             elsif total.pokemon >= 10
#                 location == "Beach"
#             elsif total.pokemon >= 13
#                 location == "Power Plant"
#             elsif total.pokemon >= 16
#                 location == "Volcano"
#              else "You shouldn't go into the #{location} just yet, it's dangerous! Try catching more Pokemon first."
#             end
#         end