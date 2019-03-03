class Users::ActivitiesController < ApplicationController

  def new
    @user = current_user
    @activities = Activity.all
  end

  def create
    ids = params.dig(:user, :activity_ids)
    ids.each { |id| UserActivity.create(user: current_user, activity_id: id) }

    redirect_to choose_path
  end

  def edit
    @user = current_user
    @activities = Activity.all
  end

  def update
    new_ids = params.dig(:user, :activity_ids).map(&:to_i)
    old_ids = current_user.activities.pluck(:id)

    ids_to_create = new_ids.reject { |id| old_ids.include? id }
    ids_to_destroy = old_ids.reject { |id| new_ids.include? id }

    ids_to_create.each { |id| UserActivity.create(user: current_user, activity_id: id) }
    current_user.user_activities.where(activity_id: ids_to_destroy).destroy_all

    redirect_to edit_user_registration_path
  end
end