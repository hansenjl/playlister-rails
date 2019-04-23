class AddCreatorColumnToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :creator, :string
  end
end
