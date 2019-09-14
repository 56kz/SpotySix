class Api::V1::AlbumsController < ApplicationController

  def index
    @albums = Album.where(artist_id: params[:id])
    render json: @albums
  end
end
