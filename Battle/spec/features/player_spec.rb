require 'player'

require "player"

feature Player do
  subject(:catface) { described_class.new("catface") }
  subject(:waterbottle) { described_class.new("waterbottle") }
  let(:game) { double :game, attack: waterbottle.reduce_hp }

  it "returns it name" do

   expect(catface.name).to eq "catface"
  end
  it 'shows hit points' do
    expect(subject.hit_points).to eq 100
  end
  it 'damages the player' do
    game.attack
    expect(waterbottle.hit_points).to eq 90
  end

end
