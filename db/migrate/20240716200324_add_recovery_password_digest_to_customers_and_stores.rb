class AddRecoveryPasswordDigestToCustomersAndStores < ActiveRecord::Migration[7.1]
  def change
    remove_column :customers, :recovery_password
    remove_column :stores, :recovery_password

    add_column :customers, :recovery_password_digest, :string
    add_column :stores, :recovery_password_digest, :string
  end
end
