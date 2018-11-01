class Dice
    def roll(number_of_dice)
      dice_result = []
      number_of_dice.times do
        dice_result.push(1 + rand(6))
      end
      dice_result
    end
end
