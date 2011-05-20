require 'spec_helper'

describe Project do
  
  describe "create a Project" do
    
    before :each do
      @project = Factory.build(:project)
    end

    context "success" do
      
      it "should create a Project given valid attributes" do
        @project.should be_valid
      end
    end
    
    context "failure" do
      
      it "should reject a Project without a name" do
        @project.name = ""
        @project.should_not be_valid
      end
      
      it "should reject a Project with a long name" do
        @project.name = "a" * 51
        @project.should_not be_valid
      end
    end
  end
  
  it "should have stories" do
    project = Factory(:project)
    project.stories << Factory(:story, title: "Foo", story_type: "bar",
      description: "Story description", project: project)
    project.should have(1).stories
    project.stories.last.project_id.should equal(project.id)
  end
end