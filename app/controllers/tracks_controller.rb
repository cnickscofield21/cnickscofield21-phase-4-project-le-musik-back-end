class TracksController < ApplicationController
  before_action :set_track, only: %i[ show update destroy ]

  # GET /tracks
  def index
    @tracks = Track.all
    render json: @tracks, status: :ok
  end

  # GET /tracks/1
  def show
    render json: @track, status: :ok
  end

  # POST /tracks
  def create
    @track = Track.create!(track_params)
    render json: @track, status: :created, location: @track
  end

  # PATCH/PUT /tracks/1
  def update
    @track.update!(track_params)
    render json: @track, status: :created
  end

  # DELETE /tracks/1
  def destroy
    @track.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_params
      params.permit(:track, :title, :duration, :year, :album_id, :artist_id)
    end
end
