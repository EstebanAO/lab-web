class CreateProfesors < ActiveRecord::Migration[5.2]
  def change
    create_table :profesors do |t|
      t.string :nombre, null: false
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :correo, unique: true
      t.string :oficina
      t.string :cv
      t.integer :tipo, null: false

      t.timestamps
    end
  end
end
