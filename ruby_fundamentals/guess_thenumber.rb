def guess_number(guess)
   number=25
   if guess==number
      return 'You got it!'
   elsif guess>number
      return 'Guess was too high!'
   elsif guess<number
      return 'Guess was too low!'

end
