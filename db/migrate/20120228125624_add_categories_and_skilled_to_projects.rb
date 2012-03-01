class AddCategoriesAndSkilledToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :category, :string
    add_column :projects, :skilled,  :boolean
  end
end
