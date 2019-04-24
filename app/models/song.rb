class Song < ApplicationRecord
  belongs_to :playlist, optional: true
  belongs_to :artist

#always make a new object
  accepts_nested_attributes_for :artist, reject_if: proc { |attributes| attributes['name'].blank? }

 # def artist_attributes=(artist_params)
    #custom attribute writer
 # end

end
