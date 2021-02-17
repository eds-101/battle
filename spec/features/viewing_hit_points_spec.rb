feature 'viewing hit points' do
  scenario 'shows player 1 hit points' do
    visit '/'
    fill_in :player_1_name, with: 'Frank'
    fill_in :player_2_name, with: 'Ed'
    click_button 'Submit'
    expect(page).to have_content 'Frank: 100 HP'
  end

  scenario 'shows player 1 hit points' do
    visit '/'
    fill_in :player_1_name, with: 'Frank'
    fill_in :player_2_name, with: 'Ed'
    click_button 'Submit'
    expect(page).to have_content 'Ed: 100 HP'
  end
end