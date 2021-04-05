class CreateOpinions < ActiveRecord::Migration[6.1]
  def change
    create_table :opinions do |t|
      t.string :cliente
      t.string :descripcion
      t.integer :calificacion
      t.string :foto

      t.timestamps
    end
  end
end
