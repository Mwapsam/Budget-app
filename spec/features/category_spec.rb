require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before(:all) do
    User.destroy_all
    Category.destroy_all
    @user = FactoryBot.create(:user)
    @category = FactoryBot.create(:category, user: @user)
  end

  before(:each) do
    visit(new_user_session_path)
    within 'form' do
      fill_in('user_email', with: @user.email)
      fill_in('user_password', with: 'secret')
    end
    click_button('Login')
    visit(categories_path)
  end

  describe 'Test category index page' do
    scenario 'I can see the name of all categories' do
      expect(page).to have_content(@category.name)
    end

    scenario 'confirm that we are on the categories show page' do
      expect(page).to have_current_path(categories_path)
    end

    scenario 'confirm that all category names are properly displayed' do
      @category = Category.all
      @category.each do |category|
        expect(page).to have_content(category.name)
      end
    end
  end
end
