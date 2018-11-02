class AddUserIdToZikrs < ActiveRecord::Migration[5.2]
  def change
    add_column :zikrs, :user_id, :integer
  end
end
