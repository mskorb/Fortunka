class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :autor
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
