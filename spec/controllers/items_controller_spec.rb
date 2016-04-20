require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) {create(:user)}
  let!(:my_item) {create(:item, user: my_user)}

  describe "item controller" do

    it "success on show get request" do
      get :show, {user_id: my_user.id, id: my_item.id}
      expect(response).to have_http_status(:success)
    end
  end
end
