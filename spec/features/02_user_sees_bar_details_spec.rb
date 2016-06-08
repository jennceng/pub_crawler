require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to click an individual bar
#   So I can see the details of that bar and its reviews
#   Acceptance Criteria
#   [ ] I can click a link from the index page that leads me to the show page
#   [ ] On the show page I can see details about the bar and its reviews
#   [ ] I should not see details / reviews of other bars

feature "User views a bars show page" do

  scenario "user sees a bars name, description, address, and reviews" do
    bar_1 = Bar.create(name: "People's Republik", description: "Has darts!", address: "1 mass ave")
    bar_2 = Bar.create(name: "Brick & Mortar", description: "Formerly the Enormous Room", address: "2 harvard street")
    
    review_1 = Review.create(bar: bar_1, username: "IPAlover", body: "sweet communist imagery!")
    review_2 = Review.create(bar: bar_2, username: "G&TallDay", body: "swanky upstairs location")

    pubcrawl = Pubcrawl.create(name: "birthday bash")
    signup = Signup.create(pubcrawl: pubcrawl, bar: bar_1)

    visit '/bars'
    click_on bar_1.name

    expect(page).to have_content bar_1.name
    expect(page).to have_content bar_1.description
    expect(page).to have_content pubcrawl.name
    expect(page).to have_content review_1.username
    expect(page).to have_content review_1.body

    expect(page).to_not have_content bar_2.name
    expect(page).to_not have_content bar_2.description
    expect(page).to_not have_content review_2.username
    expect(page).to_not have_content review_2.body
  end
end
