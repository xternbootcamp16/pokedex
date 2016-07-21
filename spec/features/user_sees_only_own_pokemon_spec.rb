require "rails_helper"

feature "User sees only their own Pokemon" do
  scenario "cannot see others' Pokemon" do
    Pokemon.create(name: "Pikachu", email: "someoneelse@example.com")
    sign_in as: "someone@example.com"

    expect(page).not_to have_css ".pokemons li", text: "Pikachu"
  end
end
