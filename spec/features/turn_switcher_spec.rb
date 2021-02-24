feature 'Change turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "James's turn"
    end
  
    scenario 'Player 2 goes after Player 1' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'Ok'
      expect(page).to have_content "Yusif's turn"
      expect(page).not_to have_content 'James'
    end
  end
end