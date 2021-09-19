require 'rails_helper'

RSpec.describe "Authentications", type: :system do
  before do
    driven_by(:rack_test)
  end

  let(:user) { create(:user) }

  it "redirect to root_path" do
    visit root_path
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Masuk"
    expect(page).to have_current_path(root_path)
  end
end
