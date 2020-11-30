class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :song_title
      t.string :artist_name
      t.string :username

      t.timestamps
    end
  end
end
