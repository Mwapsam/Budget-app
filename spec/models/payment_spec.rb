require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:all) do
    User.destroy_all
    Category.destroy_all
    Payment.destroy_all

    @user = create(:user)
    @category = create(:category, user: @user)
    @payment = create(:payment, user: @user, category_id: @category.id)
  end

  describe 'Payment validations' do
    it 'is valid with valid attributes' do
      expect(@payment).to be_valid
    end

    it 'is not valid without a name' do
      payment = build(:payment, name: nil)
      expect(payment).to_not be_valid
    end

    it 'is not valid without a user' do
      payment = build(:payment, user: nil)
      expect(payment).to_not be_valid
    end

    it 'is not valid without an amount' do
      payment = build(:payment, amount: nil)
      expect(payment).to_not be_valid
    end
  end
end
