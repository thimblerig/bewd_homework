class AddRatingsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :ratings, :integer
  end
end
