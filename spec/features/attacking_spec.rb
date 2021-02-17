feature 'attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    # click_button 'Attack Player 2'
    expect(page).to have_content 'James attacked Yusif!'
  end
end