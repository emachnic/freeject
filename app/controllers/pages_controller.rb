class PagesController < ApplicationController
  stream

  before_filter :authenticate_user!
  def index
  end

  def dashboard
    
  end
end

