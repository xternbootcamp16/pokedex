require "rails_helper"

feature "User sees their own Pokemon" do
  scenario "and not others' Pokemon" do
    Pokemon.create(name: "Psyduck", email: "someoneelse@example.com")
    sign_in as: "someone@example.com"

    expect(page).not_to have_css ".pokemons li", text: "Psyduck"
  end
end
