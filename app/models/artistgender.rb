class Artistgender < ApplicationRecord
  belongs_to :artist
  belongs_to :gender
end
