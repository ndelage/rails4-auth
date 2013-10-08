require 'spec_helper'

describe SessionsController do
  describe "#new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "#create" do
    before do
      @user = User.create!(email: "user@example.com",
                           password: "password",
                           password_confirmation: "password")
    end
    it "sets the user_id in the session on successful login" do
      post :create, {email: @user.email, password: "password"}
      expect(session[:user_id]).to eq(@user.id)
    end

    it "redirects after login" do
      post :create, {email: @user.email, password: "password"}
      expect(response.status).to eq(302)
    end
  end
end
