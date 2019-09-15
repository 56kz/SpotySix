class Api::V1::SongsController < ApplicationController

  def index
    @songs = Song.where(album_id: params[:id])
    render json: @songs
  end

end
