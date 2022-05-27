require 'rails_helper'

RSpec.describe 'Login page', type: :feature do
    before(:all) do
        User.destroy_all
        Category.destroy_all
        @user = FactoryBot.create(:user)
    end
    
    before(:each) do
        visit(new_user_session_path)
    end
    
    context 'Test login page' do
        scenario 'confirm that we are on the login page' do
        expect(page).to have_current_path(new_user_session_path)
        end
    
        scenario 'confirm that the page has a form' do
        expect(page).to have_css('form')
        end
    
        scenario 'confirm that the form has an email field' do
        expect(page).to have_css('input#user_email')
        end
    
        scenario 'confirm that the form has a password field' do
        expect(page).to have_css('input#user_password')
        end
    
        
    end
end