class ChangeTypeLink < ActiveRecord::Migration[5.2]
  def change
    rename_column :links, :type, :link_type
  end
end
