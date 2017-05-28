class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, :img_url, presence: true, uniqueness: true
  validates :img_url, length: { maximum: 255 }, format: URI::regexp(%w(http https))

  def self.order_by_name
    order(:name)
  end

  def self.order_by_date
    order(:date)
  end
end
