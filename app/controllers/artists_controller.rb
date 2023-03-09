class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show update destroy ]

  # GET /artists
  def index
    @artists = Artist.all
    render json: @artists, status: :ok
  end

  # GET /artists/1
  def show
    render json: @artist, serializer: ArtistsWithAlbumsSerializer, status: :ok
  end

  # POST /artists
  def create
    @artist = Artist.create!(artist_params)
    render json: @artist, status: :created, location: @artist
  end

  # PATCH/PUT /artists/1
  def update
    @artist.update!(artist_params)
    render json: @artist, status: :created
  end

  # DELETE /artists/1
  def destroy
    @artist.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.permit(:name, :image)
    end

end
