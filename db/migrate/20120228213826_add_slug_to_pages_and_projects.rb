class AddSlugToPagesAndProjects < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :string
    add_index  :projects, :slug, unique: true
    add_index  :pages, :slug, unique: true
  end
end
