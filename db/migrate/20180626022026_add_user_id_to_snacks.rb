class AddUserIdToSnacks < ActiveRecord::Migration[5.2]
  def change
    add_column :snacks, :user_id, :json
  end
end
