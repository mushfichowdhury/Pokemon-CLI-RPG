# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_014459) do

  create_table "attacks", force: :cascade do |t|
    t.string "name"
    t.integer "damage"
  end

  create_table "pokemon_attacks", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "attack_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "description"
  end

  create_table "user_pokemons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pokemon_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
