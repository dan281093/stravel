class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def choose
  end

  def join_activities
  end
end
