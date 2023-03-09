class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show update destroy ]

  # GET /albums
  def index
    @albums = Album.all
    render json: @albums, status: :ok
  end

  # GET /albums/1
  def show
    render json: @album, status: :ok
  end

  # POST /albums
  def create
    @album = Album.create!(album_params)
    render json: @album, status: :created, location: @album
  end

  # PATCH/PUT /albums/1
  def update
    @album.update!(album_params)
    render json: @album, status: :accepted
  end

  # DELETE /albums/1
  def destroy
    @album.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_params
      params.permit(:title, :year, :image)
    end
end
