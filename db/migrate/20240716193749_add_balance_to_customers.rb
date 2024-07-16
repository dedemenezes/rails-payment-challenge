class AddBalanceToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :balance, :integer, null: false, default: 0
  end
end
