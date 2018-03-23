require 'rails_helper'

RSpec.describe AdvertisementController, type: :controller do
  let (:my_advertisement) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: 10) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

    it "assigns [my_advertisement] to @advertisements" do
      get :index
      expect(assigns(:advertisement)).to eq([my_advertisement])
    end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
