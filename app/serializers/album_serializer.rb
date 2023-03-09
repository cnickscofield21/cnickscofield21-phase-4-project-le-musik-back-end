class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image, :artist_id
  has_many :tracks

  def artist_id
    object.artists.first.id
  end

end
