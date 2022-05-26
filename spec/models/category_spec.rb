require "rails_helper"

RSpec.describe Category, type: :model do
    before(:all) do
        @user = create(:user)
        @category = create(:category, user: @user) 
    end
    
    describe "Category validations" do
        
        
    end
end