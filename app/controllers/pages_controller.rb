class PagesController < ApplicationController

  def welcome
    @categories=Category.all
  end


end