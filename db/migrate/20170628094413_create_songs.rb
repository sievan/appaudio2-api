class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :meta
      t.text :lyrics

      t.timestamps
    end
  end
end
