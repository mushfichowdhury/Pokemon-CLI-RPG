User.destroy_all
Pokemon.destroy_all
Attack.destroy_all
PokemonAttack.destroy_all
UserPokemon.destroy_all 

squirtle = Pokemon.create(name: "Squirtle", hp: 110, ability: "Water Gun", location: "Beach", description: "A Water type starter Pokemon.")
charmander = Pokemon.create(name: "Charmander", hp: 120, ability: "Ember", location: "Volcano", description: "A Fire type starter Pokemon.")
bulbasaur = Pokemon.create(name: "Bulbasaur", hp: 140, ability: "Leech Seed", location: "Forest", description: "A Grass type starter Pokemon.")
pikachu = Pokemon.create(name: "Pikachu", hp: 115, ability: "Thunder Shock", location: "Power Plant", description: "An electric mouse.")
pidgey = Pokemon.create(name: "Pidgey", hp: 93, ability: "Gust", location: "Tall Grass", description: "A Normal/Flying Pokemon")
rattata = Pokemon.create(name: "Rattata", hp: 88, ability: "Quick Attack", location: "Tall Grass", description: "A tiny rat with a mean bite.")
mankey = Pokemon.create(name: "Mankey", hp: 95, ability: "Fury Swipes", location: "Tall Grass", description: "An aggressive Fighting Pokemon who is deceptively quick.")
mnidoran = Pokemon.create(name: "Nidoran(male)", hp: 105, ability: "Tackle", location: "Tall Grass", description: "Brother of Nidoran(female).")
fnidoran = Pokemon.create(name: "Nidoran(female)", hp: 105, ability: "Tackle", location: "Tall Grass", description: "Sister of Nidoran(male).")
caterpie = Pokemon.create(name: "Caterpie", hp: 70, ability: "Tackle", location: "Forest", description: "A gross bug.")
metapod = Pokemon.create(name: "Metapod", hp: 90, ability: "Harden", location: "Forest", description: "A useless cacoon.")
weedle = Pokemon.create(name: "Weedle", hp: 75, ability: "Poison Sting", location: "Forest", description: "Has a very sharp poison stinger.")
kakuna = Pokemon.create(name: "Kakuna", hp: 95, ability: "Harden", location: "Forest", description: "A useless cacoon.")
magikarp = Pokemon.create(name: "Magikarp", hp: 103, ability: "Splash", location: "Beach", description: "The most annoying Pokemon you will ever come across.")
poliwag = Pokemon.create(name: "Poliwag", hp: 100, ability: "Water Gun", location: "Beach", description: "A cute little tadpole.")
goldeen = Pokemon.create(name: "Goldeen", hp: 120, ability: "Water Gun", location: "Beach", description: "Dinner?")
lapras = Pokemon.create(name: "Lapras", hp: 140, ability: "Surf", location: "Beach", description: "Basically a ferry boat.")
ponyta = Pokemon.create(name: "Ponyta", hp: 115, ability: "Fire Spin", location: "Volcano", description: "Don't sit on this horse. You will get burned.")
magmar = Pokemon.create(name: "Magmar", hp: 132, ability: "Ember", location: "Volcano", description: "Camouflages in flames.")
growlithe = Pokemon.create(name: "Growlithe", hp: 117, ability: "Fire Spin", location: "Volcano", description: "Basically a Direwolf.")
vulpix = Pokemon.create(name: "Vulpix", hp: 112, ability: "Flamethrower", location: "Volcano", description: "An adorable fox that packs some heat.")
electabuzz = Pokemon.create(name: "Electabuzz", hp: 128, ability: "Thunder Punch", location: "Power Plant", description: "Not too sure but it is very powerful.")
voltorb = Pokemon.create(name: "Voltorb", hp: 120, ability: "Tackle", location: "Power Plant", description: "Is it just a living Pokeball? No one knows.")
magnemite = Pokemon.create(name: "Magnemite", hp: 97, ability: "Thunder Shock", location: "Power Plant", description: "A floating magnet.")

user1 = User.create(name: "Mushfi")
user2 = User.create(name: "Gerard")
user3 = User.create(name: "Caryn")
user4 = User.create(name: "Sean")

water_gun = Attack.create(name: "Squirtle", damage: 15)
scratch = Attack.create(name: "Charmander", damage: 18)
# vine_whip = Attack.create(name: "nil", damage: 12)
leech_seed = Attack.create(name: "Bulbasaur", damage: 15)
thunder_shock = Attack.create(name: "Pikachu", damage: 15)
tackle = Attack.create(name: "nil", damage: 13)

# pokeattk1 = PokemonAttack.create(attack: water_gun, pokemon: squirtle)
# pokeattk2 = PokemonAttack.create(attack: scratch, pokemon: charmander)
# pokeattk3 = PokemonAttack.create(attack: leech_seed, pokemon: bulbasaur)
# pokeattk4 = PokemonAttack.create(attack: thunder_shock, pokemon: pikachu)

# usrpoke1 = UserPokemon.create(user_id: user1.id, pokemon_id: pikachu.id)
# usrpoke2 = UserPokemon.create(user_id: user2.id, pokemon_id: squirtle.id)
# usrpoke3 = UserPokemon.create(user_id: user3.id, pokemon_id: charmander.id)
# usrpoke4 = UserPokemon.create(user_id: user4.id, pokemon_id: bulbasaur.id)

#usrpoke1 = UserPokemon.create(user: user1, pokemon: pikachu)
#usrpoke2 = UserPokemon.create(user: user2, pokemon: squirtle)
#usrpoke3 = UserPokemon.create(user: user3, pokemon: charmander)
#usrpoke4 = UserPokemon.create(user: user2, pokemon: bulbasaur)
