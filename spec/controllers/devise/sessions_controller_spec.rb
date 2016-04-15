require 'rails_helper'

RSpec.describe Devise::SessionsController do
  let(:password) { 'foobar84' }
  let(:user) { User.create(email: 'me@me.com', name: 'myuser', password: password, password_confirmation: password) }

  before do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user.confirm!
  end

  describe '#create' do
    before { post :create, user: { email: user.email, password: password }}
    it 'redirects to users#show' do
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(user_path(user))
    end
  end
end
