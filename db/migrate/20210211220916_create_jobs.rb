class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :category, null: false, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.string :foto
      t.string :visible, default: true

      t.timestamps
    end
  end
end
