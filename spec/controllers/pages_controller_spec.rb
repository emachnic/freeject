require 'spec_helper'

describe PagesController do
  include Devise::TestHelpers
  context "with user not signed in" do
    describe "GET 'index'" do
      it "should be successful" do
        get :index
        response.should_not be_success
      end
    end
    
    describe "GET 'dashboard'" do
      it "should be successful" do
        get :dashboard
        response.should_not be_success
      end
    end
  end
end
