class AddPageTitleToPagesAndProjects < ActiveRecord::Migration
  def change
    add_column :pages, :page_title, :string
    add_column :projects, :page_title, :string
    add_column :projects, :published, :boolean
    add_column :pages, :published, :boolean
  end
end
