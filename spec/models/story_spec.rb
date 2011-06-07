require 'spec_helper'

describe Story do
  describe "create a story" do
    before :each do
      @story = Factory.build(:story)
    end
    
    context "success" do
      it "should create a story given valid attributes" do
        @story.should be_valid
      end
    end
    
    context "failure" do
      it "should reject a story without a title" do
        @story.title = ""
        @story.should_not be_valid
      end
      
      it "should reject a story without a type" do
        @story.story_type = ""
        @story.should_not be_valid
      end
      
      it "should reject a story without a description" do
        @story.description = ""
        @story.should_not be_valid
      end
      
      it "should reject a story without a project id" do
        @story.project_id = ""
        @story.should_not be_valid
      end
    end
  end
end