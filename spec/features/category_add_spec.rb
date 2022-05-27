require 'rails_helper'

RSpec.describe 'Category add page', type: :feature do
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
        visit(new_category_path(@category))
    end

    context 'Test category add page' do
        scenario 'confirm that we are on the category add page' do
            expect(page).to have_current_path(new_category_path(@category))
        end
        
        scenario 'confirm that the page has a form' do
            expect(page).to have_css('form')
        end
        
        
    end
end