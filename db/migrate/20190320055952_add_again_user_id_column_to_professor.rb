class AddAgainUserIdColumnToProfessor < ActiveRecord::Migration[5.2]
  def change
    add_reference :professors, :user, foreign_key: false
  end
end
