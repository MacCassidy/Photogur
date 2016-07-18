class PhotoController < ApplicationController
  def addphoto
    @user = current_user
  end
  def create
    current_user.photos.create(title: params[:title], url: params[:url], caption: params[:caption])
    redirect_to profile_path
  end
end
