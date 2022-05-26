require 'rails_helper'

RSpec.describe 'Category show page', type: :feature do
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
        visit(category_payments_path(@category))
    end
    
    describe 'Test category show page' do
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
    end
end