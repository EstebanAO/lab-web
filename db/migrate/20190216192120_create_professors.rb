class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name, null: false
      t.string :father_last_name
      t.string :mother_last_name
      t.string :email, null: false, unique: true
      t.string :office
      t.string :resume
      t.integer :type

      t.timestamps
    end
  end
end
