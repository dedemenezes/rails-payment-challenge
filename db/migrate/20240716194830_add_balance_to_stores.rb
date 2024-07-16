class AddBalanceToStores < ActiveRecord::Migration[7.1]
  def change
    add_column :stores, :balance, :integer, default: 0, null: false
  end
end
