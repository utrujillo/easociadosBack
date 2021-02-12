class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :nombre
      t.string :descripcion
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
