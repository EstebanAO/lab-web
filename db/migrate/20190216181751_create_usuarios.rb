class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :password, null: false
      t.integer :rol, default: 1, null: false
      t.string :email, unique: true, null: false

      t.timestamps
    end
  end
end
