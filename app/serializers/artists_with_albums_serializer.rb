class ArtistsWithAlbumsSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :albums

  # Sends track's album for every track
  # has_many :albums

  # Sends full albums object including timestamps
  def albums
    object.albums.uniq
  end

end
