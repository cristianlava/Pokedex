class AddBelongsToType < ActiveRecord::Migration[5.2]
  def change
    add_column :types, :pokemon_id, :integer
  end
end
