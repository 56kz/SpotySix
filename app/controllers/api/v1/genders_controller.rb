class Api::V1::GendersController < ApplicationController
  def index
    gender_id = Gender.find_by(name: params[:genre_name]).id
    random_song = Song.where(gender_id: gender_id).sample
    render json: random_song.name
  end
end
