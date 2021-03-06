require 'rails_helper'

RSpec.describe 'Payment', type: :request do
  before(:example) do
    User.destroy_all
    @user = FactoryBot.create(:user)
    @categories = FactoryBot.create(:category, user: @user)
    @payment = FactoryBot.create(:payment, user: @user, category_id: @categories.id)
  end
  describe 'GET /payments' do
    before(:example) { get('/categories/1/payments') }
    it 'returns http found' do
      expect(response).to have_http_status(:found)
    end
    it 'should be redirected to sign_in' do
      expect(response).to redirect_to(new_user_session_path)
    end
    it 'includes the correct placeholder text' do
      expect(response.body).to include 'redirected'
    end
  end
end
