class RenameTitleInProjectsToName < ActiveRecord::Migration
  def change
    rename_column :projects, :title, :name
  end
end
