class AddBalanceToStores < ActiveRecord::Migration[7.1]
  def change
    add_column :stores, :balance, :integer
  end
end
