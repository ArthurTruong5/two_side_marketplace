class CreateSnacks < ActiveRecord::Migration[5.2]
  def change
    create_table :snacks do |t|
      t.string :title
      t.string :brand
      t.string :type
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
