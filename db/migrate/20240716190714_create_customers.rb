class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :cpf
      t.string :password_digest
      t.string :recovery_password

      t.timestamps
    end
  end
end
