class Song < ApplicationRecord
  belongs_to :playlist, optional: true
  belongs_to :artist

#always make a new object
  accepts_nested_attributes_for :artist, reject_if: proc { |attributes| attributes['name'].blank? }

 # def artist_attributes=(artist_params)
 #    if !artist_params[:name].empty?
 #      self.artist_id = Artist.find_or_create_by(artist_params).id
    # end
# end


end
