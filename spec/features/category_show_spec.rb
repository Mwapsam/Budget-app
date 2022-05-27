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
        
        
    end
end