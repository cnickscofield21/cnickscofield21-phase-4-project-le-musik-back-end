class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image, :artist
  has_many :tracks

  def artist
    object.artists.first.name
  end

end
