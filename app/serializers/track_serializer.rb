class TrackSerializer < ActiveModel::Serializer
  attributes :id, :track, :title, :duration, :year
  has_one :album
  has_one :artist
end
