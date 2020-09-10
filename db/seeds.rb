User.destroy_all
Pokemon.destroy_all
Attack.destroy_all
PokemonAttack.destroy_all
UserPokemon.destroy_all 

squirtle = Pokemon.create(name: "Squirtle", hp: 100, stats: "Atk 5, Def 4", ability: "Water Gun", location: "Beach", description: "A Water type starter Pokemon.")
charmander = Pokemon.create(name: "Charmander", hp: 120, stats: "Atk 6, Def 3", ability: "Scratch", location: "Desert", description: "A Fire type starter Pokemon.")
bulbasaur = Pokemon.create(name: "Bulbasaur", hp: 140, stats: "Atk 3, Def 5", ability: "Leech Seed", location: "Tall Grass", description: "A Grass type starter Pokemon.")
pikachu = Pokemon.create(name: "Pikachu", hp: 115, stats: "Atk 4, Def 4", ability: "Thunder Shock", location: "Starter", description: "An electric mouse.")

user1 = User.create(name: "Mushfi")
user2 = User.create(name: "Gerard")
user3 = User.create(name: "Caryn")
user4 = User.create(name: "Sean")

water_gun = Attack.create(name: "Squirtle", damage: 15)
scratch = Attack.create(name: "Charmander", damage: 18)
vine_whip = Attack.create(name: "nil", damage: 12)
leech_seed = Attack.create(name: "Bulbasaur", damage: 15)
thunder_shock = Attack.create(name: "Pikachu", damage: 15)
tackle = Attack.create(name: "nil", damage: 13)

pokeattk1 = PokemonAttack.create(attack: water_gun, pokemon: squirtle)
pokeattk2 = PokemonAttack.create(attack: scratch, pokemon: charmander)
pokeattk3 = PokemonAttack.create(attack: leech_seed, pokemon: bulbasaur)
pokeattk4 = PokemonAttack.create(attack: thunder_shock, pokemon: pikachu)

#usrpoke1 = UserPokemon.create(user_id: user1.id, pokemon_id: squirtle.id)

usrpoke1 = UserPokemon.create(user: user1, pokemon: pikachu)
usrpoke2 = UserPokemon.create(user: user2, pokemon: squirtle)
usrpoke3 = UserPokemon.create(user: user3, pokemon: charmander)
usrpoke4 = UserPokemon.create(user: user2, pokemon: bulbasaur)
