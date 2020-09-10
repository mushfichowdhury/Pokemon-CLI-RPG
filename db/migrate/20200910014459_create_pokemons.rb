class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hp
      t.string :ability
      t.string :location
      t.string :description
    end
  end
end
