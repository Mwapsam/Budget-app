require "rails_helper"

RSpec.describe 'Category', type: :request do
    describe 'GET /categories' do
        before(:example) { get('/categories') }
        it 'returns http found' do
        expect(response).to have_http_status(:found)
        end
        
        end
    end
end