class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :price
      t.string :difficulty
      t.text :description
      t.datetime :time
      t.boolean :volenteer

      t.timestamps
    end
  end
end
