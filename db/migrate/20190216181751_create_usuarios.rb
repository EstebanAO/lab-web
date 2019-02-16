class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :password
      t.integer :rol

      t.timestamps
    end
  end
end
