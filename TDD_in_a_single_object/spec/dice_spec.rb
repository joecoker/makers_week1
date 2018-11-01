require 'dice'

# rewrite in one line

describe Dice do
    # it "#roll will return a number between 1 and 6" do
    #   expect(subject.roll(1)[0]).to be_between(1, 6).inclusive
    # end

    it { expect(subject.roll(1)[0]).to be_between(1, 6).inclusive }


    it "#roll will return a random number" do
      roll_array = []
      25.times do
        roll_array.push(subject.roll(1))
      end
      expect(roll_array.uniq.length == 1).to equal(false)
    end

    # it "Should allow the user to roll any number of dice" do
    #   expect(subject).to respond_to(:roll).with(1).argument
    # end

    it {expect(subject).to respond_to(:roll).with(1).argument }

    it "Should return the value of each dice roll" do
      dice = Dice.new
      number_of_dice = rand(1 .. 10)
      expect(dice.roll(number_of_dice).length).to equal(number_of_dice)
    end
end
