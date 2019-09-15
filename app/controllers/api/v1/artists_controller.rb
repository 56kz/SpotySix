class Api::V1::ArtistsController < ApplicationController

  def index
    # render json: { data: Artist.all.order(popularity: :desc) }, status: 201
    @artists = { data: Artist.all.order(popularity: :desc) }
    json_response(@artists)
  end
end
