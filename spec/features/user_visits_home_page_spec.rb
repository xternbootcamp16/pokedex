require "rails_helper"

feature "User visits home page" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css "h1", text: "Pokemorning"
  end
end
