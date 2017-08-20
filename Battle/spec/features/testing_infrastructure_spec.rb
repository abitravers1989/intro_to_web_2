require './app.rb'

feature "testing forms" do

  it "has a form on the homepage" do
    visit '/'
    expect(page). to have_field("name")
  end

  scenario 'player can enter name in form and see it on screen' do
    sign_in_and_play
    expect(page).to have_content 'names are catface and waterbottle'
  end

end

  feature "Viewing hit point" do
    it "see name 2's hit points" do
      sign_in_and_play
      expect(page).to have_content "waterbottle: 100HP"
    end
end

  feature 'attacking' do
    it 'name can attack name 2' do
      sign_in_and_play
      expect(page).to have_button('attack')
    end
end
