class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :password, null: false
      t.integer :role, null: false
      # t.string :email, null: false, unique:true

      t.timestamps
    end
  end
end
