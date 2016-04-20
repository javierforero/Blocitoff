require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:my_user) { create(:user)}
  describe "finds user" do
    
    it "assigns @user" do
      get :show, {id: my_user.id}
      expect(assigns(:user)).to eq my_user
    end
  end
end
