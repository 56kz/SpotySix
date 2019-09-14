class Gender < ApplicationRecord
  has_many :songs
  has_many :relations
  has_many :artists, through: :relations
end
