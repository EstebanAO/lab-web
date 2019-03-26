class ChangeProfessorReference < ActiveRecord::Migration[5.2]
  def change
    remove_reference :professors, :user, index: true, foreign_key: false
  end
end
