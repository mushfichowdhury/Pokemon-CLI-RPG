class Pokemon < ActiveRecord::Base
    has_many :attacks
    belongs_to :user


    def add_pokemon_to_pokedex(poke)
        UserPokemon.create(user_id: player.id, pokemon_id: poke.id)
    end


end