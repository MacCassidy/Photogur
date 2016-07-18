class PageController < ApplicationController

  def homepage
  end

  def profile
    @user = current_user
  end

end
