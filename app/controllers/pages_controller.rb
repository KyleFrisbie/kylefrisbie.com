class PagesController < ApplicationController
  before_action :set_page, only: [:show]
  def about
    render layout: "about_layout"
  end
end