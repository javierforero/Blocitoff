require 'rails_helper'

RSpec.describe Item, type: :model do

  describe "model attributes" do
    let(:user) { create(:user)}
    let!(:item) { create(:item, user: user) }
    it "has correct attributes" do
      expect(item).to have_attributes(name: item.name, user: item.user)
    end
  end
end
