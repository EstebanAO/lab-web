class CreateDocumentos < ActiveRecord::Migration[5.2]
  def change
    create_table :documentos do |t|
      t.string :descripcion
      t.string :url

      t.timestamps
    end
  end
end
