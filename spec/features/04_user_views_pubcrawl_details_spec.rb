require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to click an individual pubcrawl
#   So I can see what bars are on that pubcrawls
#   Acceptance Criteria
#   [ ] I can click a link from the pubcrawl index page that leads me to the show page
#   [ ] On the show page I can see a list of bars on that pubcrawl
#   [ ] the bars are links to the bar show page

feature "User views a pubcrawl show page" do
  let!(:pubcrawl) { Pubcrawl.create(name: "olympic theme pub crawl") }
  let!(:bar_1) { Bar.create(name: "People's Republik", description: "Has darts!", address: "1 mass ave") }
  let!(:bar_2) { Bar.create(name: "Brick & Mortar", description: "Formerly the Enormous Room", address: "2 harvard street") }
  let!(:bar_3) { Bar.create(name: "Zuzu", address: "10 mass ave.") }
  let!(:signup_1) { Signup.create(pubcrawl: pubcrawl, bar: bar_1) }
  let!(:signup_2) { Signup.create(pubcrawl: pubcrawl, bar: bar_2) }

  scenario "user sees a bars name, description, address, and reviews" do
    visit '/pubcrawls'
    click_on pubcrawl.name

    expect(page).to have_content bar_1.name
    expect(page).to have_content bar_2.name
    expect(page).to_not have_content bar_3.name
  end
end
