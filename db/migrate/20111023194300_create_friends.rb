class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :last_name
      t.string :phone
      t.text :motto

      t.timestamps
    end
  end
end
