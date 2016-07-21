require "rails_helper"

feature "User adds a Pokemon" do
  scenario "successfully" do
    sign_in
    click_on "Add a new Pokemon"
    fill_in "Name", with: "Pikachu"
    click_on "Add Pokemon"

    expect(page).to have_css ".pokemons li", text: "Pikachu"
  end
end
