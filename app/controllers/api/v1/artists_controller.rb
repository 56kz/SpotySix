class Api::V1::ArtistsController < ApplicationController

  def index
    render json: { data: Artist.all.order(popularity: :desc) }, status: 201
  end
end
