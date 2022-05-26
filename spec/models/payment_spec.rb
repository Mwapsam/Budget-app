require "rails_helper"

RSpec.describe Payment, type: :model do
    before(:all) do
        @user = create(:user)
        @category = create(:category, user: @user)
        @payment = create(:payment, user: @user, category_id: @category.id)
    end
    
    
end