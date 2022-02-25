class PagesController < ApplicationController
  def home
  end

  def index
    @allPages = Cms.all
    @sheets = current_user.phone
  end

  def pages
    @allPages = Cms.all
    @page = Cms.find_by_slug(params[:slug])
  end
end
