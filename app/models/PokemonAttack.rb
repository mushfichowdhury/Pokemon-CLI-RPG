class PokemonAttack < ActiveRecord::Base 
    belongs_to :attack 
    belongs_to :pokemon
end