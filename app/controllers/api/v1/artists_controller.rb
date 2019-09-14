class Api::V1::ArtistsController < ApplicationController
  def index
    artist = RSpotify::Artist.search("Drake").first
    if artist != nil && Artist.where(name: artist.name).empty?
      new_artist = Artist.create(name: artist.name, image: artist.images[0]["url"], popularity: artist.popularity , spotify_url: artist.external_urls["spotify"], spotify_id: artist.id)
    end

    artistgenders = artist.genres
    artistgenders.each do |g|
      if Gender.where(name: g).empty?
        new_gender = Gender.create(name: g)
        new_artist.genders << new_gender
      end
    end

    # artistalbums

    # @artist = Artist.all
    render json: artist
  end
end
