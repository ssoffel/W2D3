require 'rspec'
require 'TowersofHanoi'
require 'byebug'

describe "TowersofHanoi" do
 subject(:game) { TowersofHanoi.new }

  describe "#initialize" do
    it "initializes an array of 3 array" do
      expect(game.towers).to eq([[1,2,3], [], []])
    end

    it "initializes 1st tower" do
      expect(game.towers[0]).to eq([1,2,3])
    end

  end

  describe "#get_move" do
    it "get a disk to move" do
      expect(game.get_move(0)).to eq(1)
    end


  end

  describe "#validate_get" do
    it "checks if the user picks a disk" do
      expect(game.validate_get(0)).to be true
      expect(game.validate_get(2)).to be false
    end

    it "it handles out of bounds requests" do
      expect{ game.validate_get(4)}.to raise_error(ArgumentError)
    end

 end

  describe "#validate_move" do
    it "Validates move to empty tower" do
    game.get_move(0)
    expect(game.validate_move(2)).to be true
  end

    it "Doesn't validate move to tower with smaller disk" do
      game.towers = [[3],[2],[]]
      game.disk = 1
      expect(game.validate_move(1)).to be false
    end
  end

  describe "#make_move" do
    it "moves disk into tower" do
      game.towers = [[3],[2],[]]
      game.disk = 1
      game.make_move(2)
      expect(game.towers).to eq([[3],[2],[1]])
    end

    it "resets disk to 0" do
      game.towers = [[3],[2],[]]
      game.disk = 1
      game.make_move(2)
      expect(game.disk).to eq(0)
    end

  end

  describe "#won?" do
    it "returns winner to true if tower is full" do
      game.towers = [[],[],[1,2,3]]
      expect(game.won?).to be true
    end

    it "returns winner when making winning move" do
      game.towers = [[],[],[2,3]]
      game.disk = 1
      game.make_move(2)
      expect(game.won?).to be true
    end

    it "returns false when not winning" do
      game.towers = [[],[],[2,3]]
      game.disk = 1
      expect(game.won?).to be false
    end
  end

end
