require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) {create(:user)}
  let!(:my_item) {create(:item, user: my_user)}

context "sign in as a user" do

  describe "item controller" do

    it "success on show get request" do
      get :show, {user_id: my_user.id, id: my_item.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST item create" do
    it "increases the count of items by 1 and redirects to user#show" do
      expect{ post :create, user_id: my_user.id, item: { name: "new thing to do", user: my_user}}.to change(Item, :count).by(1)
    end

    it "redirects to users page after adding item" do
      post :create, user_id: my_user.id, item: { name: "blah blah", user: my_user}
      expect(response).to redirect_to user_path(my_user)
    end
  end

  describe "Delete tests using ajax" do
    it "deletes item from list" do
      delete :destroy, format: :js, user_id: my_user, id: my_item
      count = Item.where({id: my_item.id}).count
      expect(count).to eq 0
    end

    it "has a success status" do
      delete :destroy, format: :js, user_id: my_user, id: my_item
      expect(response).to have_http_status(:success)
    end
  end
end
end
