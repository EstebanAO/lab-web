class RemoveForeignKeyDocuments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :documents, :professor, index: true, foreign_key: false
    add_reference :documents, :professor, foreign_key: false
  end
end
