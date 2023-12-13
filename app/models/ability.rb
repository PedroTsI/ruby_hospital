# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    return unless user.present?

    can [:create, :update, :destroy], Article, user: user
    return unless user.admin?

    can :manage, Article
  end
end
