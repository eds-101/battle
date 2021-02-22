feature 'viewing hit points' do
  scenario 'shows player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'James has 60 Hit Points'
  end

  scenario 'shows player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Yusif has 60 Hit Points'
  end
end