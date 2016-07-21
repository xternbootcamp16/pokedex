require "rails_helper"

feature "User adds Pokemon" do
  scenario "successfully" do
    visit root_path
    click_on "Add a Pokemon"
    fill_in "Name", with: "Bulbasaur"
    click_on "Add Pokemon"

    expect(page).to have_css ".pokemons li", text: "Bulbasaur"
  end
end
