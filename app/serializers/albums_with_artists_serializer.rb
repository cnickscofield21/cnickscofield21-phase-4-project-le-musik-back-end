class AlbumsWithArtistsSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image
  has_many :tracks

end
