class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :email
      t.string :name
      t.string :cnpj
      t.string :password_digest
      t.string :recovery_password

      t.timestamps
    end
  end
end
