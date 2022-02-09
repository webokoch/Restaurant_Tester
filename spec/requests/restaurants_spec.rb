require 'rails_helper'

RSpec.describe "Restaurants", type: :request do
  describe "GET /index" do
    
    before { get restaurants_path }

    it 'requests restaurants#index' do
      expect(assigns(:restaurants)).to eq(Restaurants.all)
    end
    
    it 'renders index template' do
      expect(response).to render_template('index')
    end
  end
end
