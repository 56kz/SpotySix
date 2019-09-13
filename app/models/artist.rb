class Artist < ApplicationRecord
  has_many :relations
  has_many :genders, through: :relations
end
