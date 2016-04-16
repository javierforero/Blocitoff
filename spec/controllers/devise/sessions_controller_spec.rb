require 'rails_helper'

RSpec.describe Devise::SessionsController do

  let(:user) {create(:user)}
  before do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  describe '#create' do
    before { post :create, user: { email: user.email, password: user.password }}
    it 'redirects to users#show' do
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(user_path(user))
    end
  end

  describe "post sessions" do
    it "returns sucess" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
