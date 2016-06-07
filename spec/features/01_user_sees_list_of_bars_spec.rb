require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to see a list of bars on the pub crawl
#   So I can decide whether I want to visit that bar
#   Acceptance Criteria
#   [ ] I must see the name of all the bars in the database
#   [ ] I should not see a description of the bar

feature "User views the Bars index page" do

  scenario "user sees a list of bars" do
    bar_1 = Bar.create(name: "People's Republik", description: "Has darts!", address: "1 mass ave")
    bar_2 = Bar.create(name: "Brick & Mortar", description: "Formerly the Enormous Room", address: "2 harvard street")

    visit '/'

    expect(page).to have_content bar_1.name
    expect(page).to have_content bar_2.name

    expect(page).to_not have_content bar_1.description
    expect(page).to_not have_content bar_2.description
  end
end
