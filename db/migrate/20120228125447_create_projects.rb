class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :meta_keyword
      t.string :meta_description
      t.string :overview
      t.string :description
      t.string :fee_and_dates
      t.string :location_and_accomodation
      t.string :snapshot

      t.timestamps
    end
  end
end
