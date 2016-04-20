require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  let(:my_user) {create(:user)}
  let!(:my_list) {create(:list, user: my_user)}

  describe "list controller" do

    it "success on show get request" do
      get :show, {user_id: my_user.id, id: my_list.id}
      expect(response).to have_http_status(:success)
    end
    
    it "assigns @list correctly" do
      get :show, {user_id: my_user.id, id: my_list.id}
      expect(assigns(:list)).to eq my_list
    end
  end
end
