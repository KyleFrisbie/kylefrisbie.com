class PagesController < ApplicationController
  def about
    render layout: "about_layout"
  end
end