require "rails_helper"

RSpec.describe Category, type: :model do
    before(:all) do
        @user = create(:user)
        @category = create(:category, user: @user) 
    end
    
    describe "Category validations" do
        it "is valid with valid attributes" do
            expect(@category).to be_valid
        end
        
        it "is not valid without a name" do
            category = build(:category, name: nil)
            expect(category).to_not be_valid
        end
        
        it "is not valid without a user" do
            category = build(:category, user: nil)
            expect(category).to_not be_valid
        end 
        
    end
end