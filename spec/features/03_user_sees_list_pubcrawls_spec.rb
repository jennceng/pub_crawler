require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to see a list of pubcrawls
#   So I can have fun things to do
#   Acceptance Criteria
#   [ ] I must see the name of all the pubcrawls in the database

feature "User views the pubcrawl index page" do

  scenario "user sees a list of pubcrawls" do
    pubcrawl_1 = Pubcrawl.create(name: "St. Patrick's Day")
    pubcrawl_2 = Pubcrawl.create(name: "Oktoberfest")

    visit '/pubcrawls'

    expect(page).to have_content pubcrawl_1.name
    expect(page).to have_content pubcrawl_2.name
  end
end
