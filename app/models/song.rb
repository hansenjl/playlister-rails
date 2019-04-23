class Song < ApplicationRecord
  belongs_to :playlist, optional: true
  belongs_to :artist
end
