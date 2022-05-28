require 'rails_helper'

RSpec.describe 'Payment add page', type: :feature do
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
    visit(new_category_payment_path(@category))
  end

  context 'Test payment add page' do
    scenario 'confirm that we are on the payment add page' do
      expect(page).to have_current_path(new_category_payment_path(@category))
    end

    scenario 'confirm that the page has a form' do
      expect(page).to have_css('form')
    end

    scenario 'confirm that the form has a name field' do
      expect(page).to have_css('input#name')
    end

    scenario 'confirm that the form has an amount field' do
      expect(page).to have_css('input#amount')
    end

    scenario 'confirm that the form has a submit button' do
      expect(page).to have_css('input[type=submit]')
    end
  end
end
