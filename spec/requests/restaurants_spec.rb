require 'rails_helper'

RSpec.describe 'Restaurants', type: :request do
  let(:valid_attributes) do
    {
      name: 'YumYum',
      cuisine: 'Korean',
      location: 'Mitte'
    }
  end

  let(:invalid_attributes) do
    {
      name: '',
      cuisine: 'Korean',
      location: 'Mitte'
    }
  end

  describe 'GET /index' do
    before { get restaurants_path }

    it 'requests restaurants#index' do
      expect(assigns(:restaurants)).to eq(Restaurant.all)
    end
    
    it 'renders index template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET /show' do
    it 'should show restaurant' do
      restaurant = Restaurant.new(valid_attributes)
      restaurant.save
      get restaurant_path(restaurant)
      expect(response).to render_template :show
    end
  end

  describe 'GET /new' do
    it 'should get the restaurants new form' do
      get new_restaurant_path
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid attributes' do
      it 'creates a new restaurant' do
        expect do
          restaurant = Restaurant.new(valid_attributes)
          restaurant.save
          post restaurants_path, params: {restaurant: valid_attributes}
        end.to change(Restaurant, :count).by(1)
      end

      it 'redirects to created restaurant' do
        post restaurants_path, params: {restaurant: invalid_attributes}
        expect(response).to be_successful
      end
    end

    context 'with invalid atrributes' do
      it 'does not create a new restaurant' do
        expect do
          post restaurants_path, params: {restaurant: invalid_attributes}
        end.to change(Restaurant, :count).by(0)       
      end

      it 'redirects to new restaurant view' do
        post restaurants_path, params: {restaurant: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end


end
