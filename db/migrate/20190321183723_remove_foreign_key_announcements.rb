class RemoveForeignKeyAnnouncements < ActiveRecord::Migration[5.2]
  def change
    remove_reference :announcements, :professor, index: true, foreign_key: false
    add_reference :announcements, :professor, foreign_key: false
  end
end
