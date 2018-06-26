class RemoveTypeFromSnacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :snacks, :type, :string
  end
end
