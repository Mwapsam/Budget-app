# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, User

      return unless user.present?

      can :manage, Category, user_id: user.id
      can :manage, Payment, user_id: user.id
    end
  end
end
