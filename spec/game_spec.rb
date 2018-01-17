require "game"

describe Game do
    let (:player_1) {double :Player}
    let (:player_2) {double :Player}
    subject(:game) { described_class.new(player_1, player_2) }

    describe "#hit" do
      it 'hits player_2 from player_1' do
        expect(player_2).to receive(:receive_damage)
        game.hit(player_2)
      end
    end

    describe "#initialize" do
      it 'initializes player 1' do
        expect(game.player_1).to eq player_1
      end

      it 'initializes player 1' do
        expect(game.player_2).to eq player_2
      end
    end

end