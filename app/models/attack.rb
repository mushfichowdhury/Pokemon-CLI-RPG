class Attack < ActiveRecord::Base
    has_many :pokemonattacks
    has_many :pokemons, through: :pokemonattacks 
end