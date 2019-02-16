class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name, null: false
      t.string :description
      t.string :participants
      t.datetime :start_date
      t.datetime :end_date
      t.integer :type
      t.string :url

      t.timestamps
    end
  end
end
