class Album < ApplicationRecord
  has_many :tracks, dependent: :destroy
  has_many :artists, through: :tracks
end
