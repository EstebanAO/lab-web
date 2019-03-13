class ChangeTypeProfessor < ActiveRecord::Migration[5.2]
  def change
    rename_column :professors, :type, :professor_type
  end
end
