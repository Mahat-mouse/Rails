class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :contactNumber

      t.timestamps
    end
  end
end
