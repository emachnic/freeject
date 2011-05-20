require 'spec_helper'

describe PagesController do
  
  describe "GET 'index'" do
    it "should be successful" do
      get :index
      response.should be_success
    end
  end
  
  describe "GET 'dashboard'" do
    it "should be successful" do
      get :dashboard
      response.should be_success
    end
  end
end