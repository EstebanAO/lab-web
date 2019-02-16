class CreateProfesors < ActiveRecord::Migration[5.2]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :correo
      t.string :oficina
      t.string :cv
      t.integer :tipo

      t.timestamps
    end
  end
end
