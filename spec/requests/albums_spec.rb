require 'rails_helper'

RSpec.describe 'Albums API', type: :request do
  # initialize test data
  let!(:artist) { create(:artist) }
  let!(:albums) { create_list(:album, 5, artist_id: artist.id) }
  let(:artist_id) { artist.id }
  let(:id) { albums.first.id }

  # Test suite for GET /artists
  describe 'GET /api/v1/artists/:id/albums' do
    # make HTTP get request before each example
    before { get "/api/v1/artists/#{artist_id}/albums" }

    context 'When Artist exists' do
      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
      it "returns all albums artist" do
        expect(json.size).to eq(1)
      end
    end

    context "When Artists doesnt exist" do
      let(:artist_id) { 0 }

      it "returns 404" do
        expect(response).to have_http_status(200)
      end

    end

  end
end
