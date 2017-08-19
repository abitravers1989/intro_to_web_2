feature 'Attacking' do
  scenario 'reduce Player 2 hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'catface: 60HP'
    expect(page).to have_content 'catface: 50HP'
  end
end
