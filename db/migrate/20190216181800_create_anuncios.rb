class CreateAnuncios < ActiveRecord::Migration[5.2]
  def change
    create_table :anuncios do |t|
      t.string :descripcion
      t.datetime :fecha

      t.timestamps
    end
  end
end
