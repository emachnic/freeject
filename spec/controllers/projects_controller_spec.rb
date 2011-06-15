require 'spec_helper'

describe ProjectsController do
  describe "GET index" do
    it "should be successful" do
      get :index
      response.should be_success
    end
    
    it "should respond to html" do
      get :index, format: "html"
      response.should render_template("index")
    end
    
    it "should respond to json" do
      get :index, format: "json"
      response.headers['Content-Type'].should =~ /application\/json/
    end
    
    it "should not render a template if type is json" do
      get :index, format: "json"
      response.should_not render_template("index")
    end
  end

  describe "GET show" do
    let(:project) {mock_model(Project).as_null_object}
    
    before do
      Project.stub(:create).and_return(project)
      @project = Project.create!(name: "foo")
    end
    
    it "should be successful" do
      get :show, id: @project.id
      response.should be_success
    end
    
    it "should respond to json" do
      get :show, id: @project, format: "json"
      response.headers['Content-Type'].should =~ /application\/json/
    end
  end
  
  describe "POST create" do
    let(:project) {mock_model(Project).as_null_object}
    
    before do
      Project.stub(:new).and_return(project)
    end
    
    context "when the project saves successfully" do
      before do
        project.stub(:save).and_return(true)
      end
      
      it "sets a flash notice" do
        post :create
        flash[:notice].should eq("Project was successfully created.")
      end
      
      it "redirects to the Project" do
        post :create
        response.should redirect_to(action: "show", id: project.id)
      end
    end
    
    context "when the project does not save successfully" do
      before do
        project.stub(:save).and_return(false)
      end
      
      it "renders the 'new' action" do
        post :create
        response.should render_template(:new)
      end
    end
  end

  describe "POST update" do
    let(:project) {mock_model(Project).as_null_object}
    
    before do
      Project.create!(name: "foo")
      Project.should_receive(:find).with(project.id).and_return(project)
    end
    
    it "should update the project" do
      put :update, id: project.id, post: {name: "bar"}
    end
    
    context "when the update is successful" do
      before do
        Project.stub(:update_attributes).and_return(true)
        Project.stub(:update).and_return(true)
      end
      
      it "should redirect to the project" do
        put :update, id: project.id, post: {name: "bar"}
        response.should redirect_to(project)
      end
      
      it "should have a flash notice" do
        put :update, id: project.id, post: {name: "bar"}
        flash[:notice].should eq("Project was successfully updated.")
      end
    end
  end
end
