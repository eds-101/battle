feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'James'
    expect(page).to have_content 'Yusif'
  end
end