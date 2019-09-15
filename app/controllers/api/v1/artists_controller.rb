class Api::V1::ArtistsController < ApplicationController

  def index
    # render json: { data: Artist.all.order(popularity: :desc) }, status: 201
    @artists = Artist.all
    json_response(@artists)
  end
end
