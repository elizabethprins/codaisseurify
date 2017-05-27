class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true , uniqueness: true, length: { maximum: 255 }
  validates :artist_id, presence: true
end
