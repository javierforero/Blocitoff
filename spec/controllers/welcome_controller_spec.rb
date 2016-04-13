require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "tests the index page" do

    it "shows success when get request is passes" do

      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders index page" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
