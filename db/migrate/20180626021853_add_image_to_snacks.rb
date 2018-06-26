class AddImageToSnacks < ActiveRecord::Migration[5.2]
  def change
    add_column :snacks, :image, :json
  end
end
