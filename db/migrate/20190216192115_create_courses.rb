class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.integer :clu_course
      t.integer :clu_laboratory
      t.integer :clu_unities
      t.boolean :status
      t.integer :type
      t.string :information

      t.timestamps
    end
  end
end
