class CreateMateria < ActiveRecord::Migration[5.2]
  def change
    create_table :materia do |t|
      t.string :nombre
      t.string :clave, unique:true
      t.integer :clu_clases
      t.integer :clu_laboratorio
      t.integer :clu_unidades
      t.boolean :estatus
      t.integer :tipo
      t.string :info

      t.timestamps
    end
  end
end
