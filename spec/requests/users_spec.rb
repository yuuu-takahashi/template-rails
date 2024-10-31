require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_index_path
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get users_path
      expect(response).to render_template(:index)
    end

    it "loads all of the users into @users" do
      user1 = User.create!(name: "User One", email: "user1@example.com", password: "password")
      user2 = User.create!(name: "User Two", email: "user2@example.com", password: "password")
      get users_path
      expect(assigns(:users)).to match_array([ user1, user2 ])
    end
  end
end
