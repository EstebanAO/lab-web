class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
