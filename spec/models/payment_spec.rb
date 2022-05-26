require "rails_helper"

RSpec.describe Payment, type: :model do
    before(:all) do
        @user = create(:user)
        @category = create(:category, user: @user)
        @payment = create(:payment, user: @user, category_id: @category.id)
    end
    
    describe "Payment validations" do
        it "is valid with valid attributes" do
            expect(@payment).to be_valid
        end
        
        it "is not valid without a name" do
            payment = build(:payment, name: nil)
            expect(payment).to_not be_valid
        end
        
        
    end
end