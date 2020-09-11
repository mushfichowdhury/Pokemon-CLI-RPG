User.destroy_all
Pokemon.destroy_all
UserPokemon.destroy_all 

squirtle = Pokemon.create(name: "Squirtle", location: "Cerulean Beach", description: "A Water type starter Pokemon.")
charmander = Pokemon.create(name: "Charmander", location: "Cinnabar Volcano", description: "A Fire type starter Pokemon.")
bulbasaur = Pokemon.create(name: "Bulbasaur", location: "Viridian Forest", description: "A Grass type starter Pokemon.")
pikachu = Pokemon.create(name: "Pikachu", location: "Power Plant", description: "An electric mouse.")
pidgey = Pokemon.create(name: "Pidgey", location: "Tall Grass", description: "A Normal/Flying Pokemon")
rattata = Pokemon.create(name: "Rattata", location: "Tall Grass", description: "A tiny rat with a mean bite.")
mew = Pokemon.create(name: "Mew", location: "Tall Grass", description: "Father of Mewtwo.")
mankey = Pokemon.create(name: "Mankey", location: "Tall Grass", description: "An aggressive Fighting Pokemon who is deceptively quick.")
mnidoran = Pokemon.create(name: "Nidoran(male)", location: "Tall Grass", description: "Brother of Nidoran(female).")
fnidoran = Pokemon.create(name: "Nidoran(female)", location: "Tall Grass", description: "Sister of Nidoran(male).")
caterpie = Pokemon.create(name: "Caterpie", location: "Viridian Forest", description: "A gross bug.")
metapod = Pokemon.create(name: "Metapod", location: "Viridian Forest", description: "A useless cacoon.")
weedle = Pokemon.create(name: "Weedle", location: "Viridian Forest", description: "Has a very sharp poison stinger.")
kakuna = Pokemon.create(name: "Kakuna", location: "Viridian Forest", description: "A useless cacoon.")
beedrill = Pokemon.create(name: "Beedrill", location: "Viridian Forest", description: "Hope you aren't allergic to bees.")
magikarp = Pokemon.create(name: "Magikarp", location: "Cerulean Beach", description: "The most annoying Pokemon you will ever come across.")
poliwag = Pokemon.create(name: "Poliwag", location: "Cerulean Beach", description: "A cute little tadpole.")
goldeen = Pokemon.create(name: "Goldeen", location: "Cerulean Beach", description: "Dinner?")
lapras = Pokemon.create(name: "Lapras", location: "Cerulean Beach", description: "Basically a ferry boat.")
articuno = Pokemon.create(name: "Articuno", location: "Cerulean Beach", description: "One of the Legendary birds.")
moltres = Pokemon.create(name: "Moltres", location: "Cinnabar Volcano", description: "A Legendary fire bird! Not the car.")
ponyta = Pokemon.create(name: "Ponyta", location: "Cinnabar Volcano", description: "Don't sit on this horse. You will get burned.")
magmar = Pokemon.create(name: "Magmar", location: "Cinnabar Volcano", description: "Camouflages in flames.")
onix = Pokemon.create(name: "Onix", location: "Cinnabar Volcano", description: "Brock's rocks.")
growlithe = Pokemon.create(name: "Growlithe", location: "Cinnabar Volcano", description: "Basically a Direwolf.")
vulpix = Pokemon.create(name: "Vulpix", location: "Cinnabar Volcano", description: "An adorable fox that packs some heat.")
zapdos = Pokemon.create(name: "Zapdos", location: "Power Plant", description: "It's electric! Boogie woogie woogie! And also Legendary!")
electabuzz = Pokemon.create(name: "Electabuzz", location: "Power Plant", description: "Not too sure but it is very powerful.")
voltorb = Pokemon.create(name: "Voltorb", location: "Power Plant", description: "Is it just a living Pokeball? No one knows.")
magnemite = Pokemon.create(name: "Magnemite", location: "Power Plant", description: "A floating magnet.")

user3 = User.create(name: "Caryn")
user4 = User.create(name: "Sean")
