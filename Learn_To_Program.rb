def beer_on_the_wall ( start = 100 )
  while start > 0
    puts "#{start} bottles of beer on the wall, #{start} bottles of beer!\nTake one down pass it around,\n#{start-1} bottles of beer on the wall!"
    start -= 1
  end
end
@bye_count=0
def old_grandma ( sentence )
  if sentence.upcase === sentence
    if sentence === "BYE"
      @bye_count += 1
      if @bye_count === 3
        puts "BYE SONNY!"
      else
        puts "NO STAY!"
      end
    else
      @bye_count = 0
      puts "I understand"
    end
  else
    puts "WHAT I DIDN\'T HERE YOU!"
  end
end

def leap_years ( startYear, endYear )
  leapYear = Proc.new do |testYear|
    puts "#{testYear} IS a leap year!"
  end
  for testYear in startYear..endYear
    if testYear % 100 === 0
      if testYear % 400 === 0
        leapYear.call testYear
      end
    elsif testYear % 4 === 0
      leapYear.call testYear
    end
  end
end
def sort_words
  x = 0
  array = []
  word = nil
  while word != ''
    p 'gimme a sentence'
    word = gets.chomp
    array[x] = word
    x += 1
  end
  array.sort.join(', ')
end