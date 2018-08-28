class PagesController < ApplicationController
  def home
    
  end

  def teacher
    @reviews = Review.all
  end
end
