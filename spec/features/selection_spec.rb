require 'spec_helper'

feature 'selection' do
  scenario 'selectiong weapon' do
    visit('/')
    fill_in :player_name, with: 'Mike'
    click_button 'Start'
    click_button 'Rock'
    expect(page).to have_content 'Mike has chosen Rock'
  end
end
