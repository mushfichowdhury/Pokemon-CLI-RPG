class CreatePokemonAttack < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_attacks do |t|
      t.integer :pokemon_id
      t.integer :attack_id
    end
  end
end
