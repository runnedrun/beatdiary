require "spec_helper"

describe BeatsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/beats" }.should route_to(:controller => "beats", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/beats/new" }.should route_to(:controller => "beats", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/beats/1" }.should route_to(:controller => "beats", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/beats/1/edit" }.should route_to(:controller => "beats", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/beats" }.should route_to(:controller => "beats", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/beats/1" }.should route_to(:controller => "beats", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/beats/1" }.should route_to(:controller => "beats", :action => "destroy", :id => "1")
    end

  end
end
