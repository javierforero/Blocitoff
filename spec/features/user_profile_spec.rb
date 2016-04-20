require "rails_helper"

RSpec.feature "User profile", :type => :feature do
  let(:my_user) {create(:user)}
  scenario "User profile page" do
    visit "/users/#{my_user.id}"



    expect(page).to have_text("My text")
  end
end
