require "rails_helper"

RSpec.describe FastenersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fasteners").to route_to("fasteners#index")
    end

    it "routes to #new" do
      expect(:get => "/fasteners/new").to route_to("fasteners#new")
    end

    it "routes to #show" do
      expect(:get => "/fasteners/1").to route_to("fasteners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fasteners/1/edit").to route_to("fasteners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fasteners").to route_to("fasteners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fasteners/1").to route_to("fasteners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fasteners/1").to route_to("fasteners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fasteners/1").to route_to("fasteners#destroy", :id => "1")
    end

  end
end
