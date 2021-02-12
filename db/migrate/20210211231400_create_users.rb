class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellidos
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
