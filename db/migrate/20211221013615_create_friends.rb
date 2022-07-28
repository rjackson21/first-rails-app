class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.integer :age
      t.integer :years_of_friendship

      t.datetime
    end
  end
end
