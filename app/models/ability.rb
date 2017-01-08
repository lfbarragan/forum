class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.super?
      can :manage, :all
    elsif user.admin?
      can [:destroy], Post
    else
      can :read, :all
      can :manage, Post, :user_id user.id
    end

  end
end
