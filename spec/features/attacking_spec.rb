feature 'attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content 'Player 1 attacked player 2!'
  end
end