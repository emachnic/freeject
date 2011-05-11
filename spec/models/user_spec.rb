require 'spec_helper'

describe User do
  
  before(:each) do
     @user = User.new(:username => "chunkybacon", :email => "chunky@bacon.com",
        :password => "P@ssword", :password_confirmation => "P@ssword")
  end
  it "should create a User given valid attributes" do
    @user.should be_valid
  end
  
  it "should reject a User without a username" do
    @user.username = ""
    @user.should_not be_valid
  end
  
  it "should reject a User with a duplicate username" do
    @user.save
    new_user = User.new(:username => "chunkybacon", :email => "new@user.com",
      :password => "P@ssword", :password_confirmation => "P@ssword")
    new_user.should_not be_valid
  end
end