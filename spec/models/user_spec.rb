require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){ User.create!(name: "john mack", email:"johnmac@email.com", password: "johnjohn!")}

  it { is_expected.to validate_presence_of(:name)}
  it { is_expected.to validate_length_of(:name).is_at_least(1) }
  it { is_expected.to validate_presence_of(:email)}
  it { is_expected.to validate_uniqueness_of(:email)}
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password).is_at_least(8) }

  describe "user attributes matches" do

    it "should have name, email, and password as user" do
      expect(user).to have_attributes(name:"john mack", email: "johnmac@email.com")
    end
  end
end
