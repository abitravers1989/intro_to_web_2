require './app.rb'

# feature 'testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end
#
# before do
#   visit('/')
#   fill_in('name', with: 'catface')
#   fill_in('name2', with: 'waterbottle')
#   click_button('Submit')
# end

feature 'players entering names' do
  scenario 'player can enter name in form and see it on screen' do
    sign_in_and_play
    expect(page).to have_content 'names are catface and waterbottle'
  end
end

# feature 'player1 seeing player2 hit points' do
#   scenario 'on play page hit points from players can be seen' do
#     sign_in_and_play
#     expect(page).to have_content "catface = 0, waterbottle = 0"
#   end
# end
