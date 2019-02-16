class CreateAnuncios < ActiveRecord::Migration[5.2]
  def change
    create_table :anuncios do |t|
      t.string :descripcion, null: false
      t.datetime :fecha, null: false

      t.timestamps
    end
  end
end
