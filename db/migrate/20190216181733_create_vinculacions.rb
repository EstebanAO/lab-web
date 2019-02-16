class CreateVinculacions < ActiveRecord::Migration[5.2]
  def change
    create_table :vinculacions do |t|
      t.string :nombre, null: false
      t.string :descripcion
      t.string :participantes
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.integer :tipo, null: false
      t.string :url

      t.timestamps
    end
  end
end
