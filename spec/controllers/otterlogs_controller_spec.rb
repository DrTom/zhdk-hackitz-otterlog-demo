require 'spec_helper'

describe OtterlogsController do

  describe "index" do
    it "should respond with success" do
      get :index, {format: 'json'}
      expect(@response).to be_successful
    end
  end

  describe "get" do
    before :each do
      @otterlog =FactoryGirl.create :otterlog
    end

    it "should respond with success" do
      get :get, {format: 'json', id: @otterlog.id}
      expect(@response).to be_successful
    end
  end

  describe "put" do

    describe "create" do
      before :each do
        @otterlog =FactoryGirl.build :otterlog
      end
      it "should respond with succes" do
        put :put, {format: 'json', otterlog: @otterlog.as_json, id: @otterlog.id}
        expect(@response).to be_successful
      end
      it "should persist the otterlog" do
        put :put, {format: 'json', otterlog: @otterlog.as_json, id: @otterlog.id}
        expect(Otterlog.find_by_id @otterlog.id).to be
      end
    end

    describe "update" do
    end

  end


end
