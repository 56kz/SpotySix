class Api::V1::ArtistsController < ApplicationController

  def index
    get_answer
  end

  private
    def get_answer
      array = []
      artist_list = Artist.all.order(popularity: :desc)
      artist_list.each do |a|
        new_object = { name: a.name, image: a.image, genres: a.genders, popularity: a.popularity, spotify_url: a.spotify_url, spotify_id: a.spotify_id }
        array << new_object
      end
      answer = { data: array }
      json_response(answer)
    end

end
