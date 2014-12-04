class AddDeletedAtToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :deleted_at, :datetime
    add_index :pokemons, :deleted_at
  end
end
