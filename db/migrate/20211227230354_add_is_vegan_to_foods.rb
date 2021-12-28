class AddIsVeganToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :is_vegan, :boolean
  end
end
