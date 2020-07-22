class WhiteController < ApplicationController
  def home
    @microposts = Micropost.all
  end

  def page
  end

  def graphy
  end

  def inquiry
  end
end
