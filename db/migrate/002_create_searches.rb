class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :star
      t.string :genre
      t.integer :duration
    end
  end
end
