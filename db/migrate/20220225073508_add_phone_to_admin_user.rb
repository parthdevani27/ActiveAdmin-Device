class AddPhoneToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :phone, :string
    remove_index :admin_users, :email
  end
end
