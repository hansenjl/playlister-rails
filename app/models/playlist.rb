class Playlist < ApplicationRecord
  has_many :songs
  # song_ids=  song_ids
  has_many :artists, through: :songs

  accepts_nested_attributes_for :songs
  # song_attributes=

  # def song_attributes=(song_params)
  #   Song.create(song_params)
  # end
end
