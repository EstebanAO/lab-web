class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
