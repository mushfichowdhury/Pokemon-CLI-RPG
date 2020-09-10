class User < ActiveRecord::Base
    has_many :userpokemons
    has_many :pokemons, through: :userpokemons
end