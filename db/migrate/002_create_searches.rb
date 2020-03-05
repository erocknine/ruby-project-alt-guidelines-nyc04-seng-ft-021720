class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :type
      t.string :title
      t.string :star
      t.string :service
      t.string :genre
      t.integer :media_id
    end
  end
end
