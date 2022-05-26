require "rails_helper"

RSpec.describe 'Category', type: :request do
    describe 'GET /categories' do
        
        it 'includes the correct placeholder text' do
        expect(response.body).to include 'redirected'
        end
    end
end