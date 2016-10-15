require 'spec_helper'

feature 'Enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :player_name, with: 'Mike'
    click_button 'Start'
    expect(page).to have_content 'Mike versus CPU'
  end
end
