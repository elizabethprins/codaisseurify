require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:img_url) }
    it { is_expected.to validate_length_of(:img_url).is_at_most(255) }
  end

  describe "association with song" do
    let(:artist) { create :artist }
    let!(:song)  { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new(title: "RAMifications")
      song2 = artist.songs.new(title: "Atomation")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
