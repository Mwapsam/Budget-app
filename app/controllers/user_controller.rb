# frozen_string_literal: true

class UserController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  
  def index; end
end
