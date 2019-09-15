class Api::V1::GendersController < ApplicationController
  def index
    gender = Gender.find_by(name: params[:genre_name])
    if gender == nil || Song.where(gender_id: gender.id).empty?
      render json: "No hay canciones en este género"
    else
      random_song = Song.where(gender_id: gender.id).sample
      render json: random_song.name
    end

  end
end
