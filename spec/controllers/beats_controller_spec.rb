require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BeatsController do

  def mock_beat(stubs={})
    @mock_beat ||= mock_model(Beat, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all beats as @beats" do
      Beat.stub(:all) { [mock_beat] }
      get :index
      assigns(:beats).should eq([mock_beat])
    end
  end

  describe "GET show" do
    it "assigns the requested beat as @beat" do
      Beat.stub(:find).with("37") { mock_beat }
      get :show, :id => "37"
      assigns(:beat).should be(mock_beat)
    end
  end

  describe "GET new" do
    it "assigns a new beat as @beat" do
      Beat.stub(:new) { mock_beat }
      get :new
      assigns(:beat).should be(mock_beat)
    end
  end

  describe "GET edit" do
    it "assigns the requested beat as @beat" do
      Beat.stub(:find).with("37") { mock_beat }
      get :edit, :id => "37"
      assigns(:beat).should be(mock_beat)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created beat as @beat" do
        Beat.stub(:new).with({'these' => 'params'}) { mock_beat(:save => true) }
        post :create, :beat => {'these' => 'params'}
        assigns(:beat).should be(mock_beat)
      end

      it "redirects to the created beat" do
        Beat.stub(:new) { mock_beat(:save => true) }
        post :create, :beat => {}
        response.should redirect_to(beat_url(mock_beat))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved beat as @beat" do
        Beat.stub(:new).with({'these' => 'params'}) { mock_beat(:save => false) }
        post :create, :beat => {'these' => 'params'}
        assigns(:beat).should be(mock_beat)
      end

      it "re-renders the 'new' template" do
        Beat.stub(:new) { mock_beat(:save => false) }
        post :create, :beat => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested beat" do
        Beat.stub(:find).with("37") { mock_beat }
        mock_beat.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :beat => {'these' => 'params'}
      end

      it "assigns the requested beat as @beat" do
        Beat.stub(:find) { mock_beat(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:beat).should be(mock_beat)
      end

      it "redirects to the beat" do
        Beat.stub(:find) { mock_beat(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(beat_url(mock_beat))
      end
    end

    describe "with invalid params" do
      it "assigns the beat as @beat" do
        Beat.stub(:find) { mock_beat(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:beat).should be(mock_beat)
      end

      it "re-renders the 'edit' template" do
        Beat.stub(:find) { mock_beat(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested beat" do
      Beat.stub(:find).with("37") { mock_beat }
      mock_beat.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the beats list" do
      Beat.stub(:find) { mock_beat }
      delete :destroy, :id => "1"
      response.should redirect_to(beats_url)
    end
  end

end
