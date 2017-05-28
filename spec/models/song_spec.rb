require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:artist_id) }
    it { is_expected.to validate_length_of(:title).is_at_most(255) }
  end

  describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to an artist" do
    song = artist.songs.new(title: "Unicodes Are Real")

    expect(song.artist).to eq(artist)
  end
end
end
