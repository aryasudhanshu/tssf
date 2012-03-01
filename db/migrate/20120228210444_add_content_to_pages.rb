class AddContentToPages < ActiveRecord::Migration
  def change
    add_column :pages, :content, :string
  end
end
