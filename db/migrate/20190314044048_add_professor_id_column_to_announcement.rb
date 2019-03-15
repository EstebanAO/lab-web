class AddProfessorIdColumnToAnnouncement < ActiveRecord::Migration[5.2]
  def change
    add_reference :announcements, :professor, foreign_key: true
  end
end
