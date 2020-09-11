require 'tty-prompt'
require 'tty-box'
require 'pry'

class PokemonRPG
    attr_reader :prompt, :pastel, :pid
    @@random_array = []

    def initialize()
        @prompt = TTY::Prompt.new(active_color: :red)
        @pastel = Pastel.new
        @pid = pid
    end

    def count_pokedex
        current_count = UserPokemon.all.filter { |elem| elem.user_id == User.last.id}.map { |poke| poke.pokemon_id }.count 
        count_left = 151 - current_count
        print TTY::Box.frame pastel.bright_red("You have caught #{current_count} pokemon. You have #{count_left} pokemon left.")
    end

    def battle(arg)
        pastel = Pastel.new
        random = Pokemon.all.filter { |poke| poke.location == arg }.sample
        @@random_array << random          
        play_music("app/models/pokemon_battle_music.mp3")
        sleep(5)
        print TTY::Box.frame { pastel.green "A wild #{random.name} appeared! What would you like to do?" }
        battle_prompt
    end

    def battle_prompt
        prompt = TTY::Prompt.new
        pastel = Pastel.new
        battle_choices = {pastel.cyan("Catch!") => 1, pastel.yellow("Scan Pokedex!") => 2, pastel.green("Run!") => 3}
        battle_options = prompt.select("Choose one:", battle_choices)
            if battle_options == 1
                UserPokemon.create(user_id: User.last.id, pokemon_id: @@random_array.last.id)
                print TTY::Box.frame pastel.green("Congratulations! You've captured #{@@random_array.last.name}!\n#{@@random_array.last.description}. It can be found at the #{@@random_array.last.location}.")
                sleep(3)
                kill
                change_location
            elsif battle_options == 2
                if UserPokemon.all.find_by(pokemon_id: @@random_array.last.id) == @@random_array.last.id 
                    print TTY::Box.frame pastel.green("You have already caught #{@@random_array.last.name}.\n#{@@random_array.last.description}. It can be found at the #{@@random_array.last.location}.")
                    sleep(2)
                    battle_prompt
                else 
                    print TTY::Box.frame pastel.red("You have not caught this pokemon. No pokemon data is available.")
                    sleep(2)
                    battle_prompt
                binding.pry
                end
                binding.pry
            else
                print TTY::Box.frame "You have escaped the battle."
                sleep(2)
                kill
                change_location
            end
    end

    def tall_grass
        puts "An excellent location for those starting out! Good luck on your journey!"
        sleep(3)
        print TTY::Box.frame pastel.bright_green("Welcome to Route 1!")
        tall_grass_choice = prompt.yes?("Do you want to walk around the grass?")
            if tall_grass_choice == true
                battle("Tall Grass")
            else 
                tall_grass_yes_no = prompt.yes?("Do you want to change location?")
                    if tall_grass_yes_no == true 
                        change_location
                    else 
                        tall_grass
                    end
            end
    end

    def power_plant
        puts "The atmosphere is electric! Hope you're up for the challenge."
        sleep(3)
        print TTY::Box.frame pastel.yellow("Welcome to the Power Plant!")
        power_plant_choice = prompt.yes?("Do you want to walk around the power plant?")
            if power_plant_choice == true 
                battle("Power Plant")
            else 
                power_plant_yes_no = prompt.yes?("Do you want to change location?")
                    if power_plant_yes_no == true 
                        change_location
                    else 
                        power_plant
                    end
            end
    end

    def volcano
        puts "It's getting hot in here!"
        sleep(3)
        print TTY::Box.frame pastel.red("Welcome to Cinnabar Volcano!")
        volcano_choice = prompt.yes?("Do you want to walk around the volcano?")
            if volcano_choice == true 
                battle("Cinnabar Volcano")
            else 
                volcano_yes_no = prompt.yes?("Do you want to change location?")
                    if volcano_yes_no == true 
                        change_location
                    else 
                        volcano
                    end
            end
    end

    def forest
        puts "The scariest thing in the forest are the Bug Catchers. Watch your back!"
        sleep(3)
        print TTY::Box.frame pastel.green("Welcome to Viridian Forest!")
        forest_choice = prompt.yes?("Do you want to walk around the forest?")
            if forest_choice == true 
                battle("Viridian Forest")
            else 
                forest_yes_no = prompt.yes?("Do you want to change location?")
                    if forest_yes_no == true 
                        change_location
                    else 
                        forest
                    end
            end
    end

    def beach
        puts "Let's go to the beach, beach. Let's go get away."
        sleep(3)
        print TTY::Box.frame pastel.cyan("Welcome to Cerulean Beach!")
        beach_choice = prompt.yes?("Do you want to walk around the beach?")
            if beach_choice == true 
                battle("Cerulean Beach")
            else 
                beach_yes_no = prompt.yes?("Do you want to change location?")
                    if beach_yes_no == true 
                        change_location
                    else 
                        beach
                    end
            end
    end
        
    def change_location
        pastel = Pastel.new 
        puts "Where would you like to go?"
        locations = {pastel.bright_green("Tall Grass") => 1, pastel.yellow("Power Plant") => 2, pastel.red("Cinnabar Volcano") => 3, pastel.green("Viridian Forest") => 4, pastel.cyan("Cerulean Beach") => 5, pastel.bright_red("Check Pokedex") => 6, pastel.white("Finish") => 7}
        location_choice = prompt.select("Choose one:", locations)
            if location_choice == 1 
                tall_grass
            elsif location_choice == 2
                sleep(2)
                power_plant
            elsif location_choice == 3
                sleep(2)
                volcano
            elsif location_choice == 4
                sleep(2)
                forest
            elsif location_choice == 5
                sleep(2)
                beach
            elsif location_choice == 6
                count_pokedex
                sleep(3)
                change_location
            elsif location_choice == 7
                sleep(5)
                return print TTY::Box.frame "Thank you for playing Pokemon: Flatiron Edition!" 
            end
    end

    def play_music(file)
        @pid = spawn( 'afplay', file )
    end

    def kill 
        Process.kill "TERM", @pid
    end
    

    def title 
        pastel = Pastel.new(eachline: "\r\n")
        pokemon_title = pastel.bold.yellow("                                                                          
         _.----.        ____         ,'  _\\   ___    ___     ____
     _,-':::::::`.     |::::|  /`.   \\,-'    |:::\\  /:::|   |::::\\  |`.
     \\::::::__::::\\    '-.::| /:::`.  ___    |::::\\/::::|   '-.:::\\ |::|
      \\.::::\\:\\:::|  __  |::|/::::,','_::`.  |::::::::::|:__::|::::\\|::|
        \\::::\\/:::/,':_`.|::::::,' /:/:/:/   |::::::::::,':_`.|:::::|::|
         \\:::::,-'/::/:::\\::::,'   |:\\/:/ ,`.|:::::::::/::/   \\::|:::::|
          \\::::\\ |:::\\_/::|:::`-.  \\::::`'::/|::|::::||:::\\_/::|:|\\::::|
           \\::::\\ \\::::::/:::::::`-.`.___,-' |::|\\::/|:\\::::::/::| |:::|
            \\::::\\ `.__,'|::|`-._::::`|      |__| \\/ |::`.__,'|::| |:::|
             \\_.-'       |__|    `-._:|              '-.|     '-.| |:::|
                                     `'                            '-._|
                             FLATIRON EDITION")

    print TTY::Box.frame { pokemon_title }
    end
    
    def title_sequence
        puts "Hello! Welcome to the wonderful world of Pokemon!"
        sleep(3)
        puts "My name is Oak! People call me the pokémon Prof!"
        sleep(3)
        puts "This world is inhabited by creatures called pokémon!"
        sleep(3)
        puts "For some people, pokémon are pets. Others use them for fights."
        sleep(3)
        puts "Myself...I study pokémon as a profession."
        sleep(3)
        puts "Oh look at me just blabbering on..."
        sleep(2)
    end

    def run
        play_music("app/models/pokemon_theme.mp3")
        sleep(10)
        title
        sleep(3)
        title_sequence
        User.intro_name
        sleep(2)
        Pokemon.starter_pokemon 
        sleep(2)
        change_location
    end

end