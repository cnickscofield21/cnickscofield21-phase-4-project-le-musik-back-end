class AlbumsWithArtistsSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image
  has_many :tracks

  def artist_id
    object.artists.first.id
  end

end
