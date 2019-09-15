class Api::V1::GendersController < ApplicationController
  def index
    find_song
  end

  private
  def find_song
    gender = Gender.find_by(name: params[:genre_name])
    if gender == nil || Song.where(gender_id: gender.id).empty?
      render json: { errors: "No hay canciones en este género" }, status: 422
    else
      random_song = Song.where(gender_id: gender.id).sample
      render json: { data: random_song.name }, status: 201
    end
  end

end
