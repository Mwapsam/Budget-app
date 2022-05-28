require 'rails_helper'

RSpec.describe 'Category show page', type: :feature do
  before(:all) do
    User.destroy_all
    Category.destroy_all
    Payment.destroy_all

    @user = create(:user)
    @category = create(:category, user: @user)
    @payment = create(:payment, user: @user, category_id: @category.id)
  end

  before(:each) do
    visit(new_user_session_path)
    within 'form' do
      fill_in('user_email', with: @user.email)
      fill_in('user_password', with: 'secret')
    end
    click_button('Login')
    visit(category_payments_path(@category))
  end

  context 'Test category show page' do
    scenario 'I can see the name of the category' do
      expect(page).to have_content(@category.name)
    end

    scenario 'confirm that we are on the category show page' do
      expect(page).to have_current_path(category_payments_path(@category))
    end

    scenario 'confirm that all category names are properly displayed' do
      @category = Category.all
      @category.each do |category|
        expect(page).to have_content(category.name)
      end
    end

    scenario 'redirect to category show page' do
      expect(page).to have_current_path(category_payments_path(@category))
    end

    scenario 'confirm that the category name are properly displayed' do
      expect(page).to have_content(@category.name)
    end

    scenario 'confirm that there is a link for adding payment to category' do
      expect(page).to have_link('Add Transaction', href: new_category_payment_path(@category))
    end

    scenario 'confirm that when link to add payment is clicked, we are redirected to the new payment page' do
      click_link('Add Transaction', href: new_category_payment_path(@category))
      expect(page).to have_current_path(new_category_payment_path(@category))
    end
  end
end
