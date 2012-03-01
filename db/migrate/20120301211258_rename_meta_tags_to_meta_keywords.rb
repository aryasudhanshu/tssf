class RenameMetaTagsToMetaKeywords < ActiveRecord::Migration
  def change
    rename_column :pages, :meta_tags, :meta_description
  end
end
