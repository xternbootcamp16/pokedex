class AddEmailToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :email, :string
  end
end
