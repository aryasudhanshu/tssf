class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :meta_tags
      t.string :meta_keywords

      t.timestamps
    end
  end
end
