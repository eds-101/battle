feature 'attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    # click_button 'Attack Player 2'
    expect(page).to have_content 'James attacked Yusif!'
  end
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Ok'
    expect(page).not_to have_content 'Yusif has 60 Hit Points'
    expect(page).to have_content 'Yusif has 50 Hit Points'
  end
end