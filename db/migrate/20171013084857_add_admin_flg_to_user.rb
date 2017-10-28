class AddAdminFlgToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_flg, :boolean, default: 0
  end
end
