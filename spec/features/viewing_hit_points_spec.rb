feature 'viewing hit points' do
  scenario 'shows player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'James: 100 HP'
  end

  scenario 'shows player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Yusif: 100 HP'
  end
end