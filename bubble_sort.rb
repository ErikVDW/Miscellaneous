def bubble_sort numbers
  (numbers.length - 1).times do
    i = 0
    j = 1
    while j < numbers.length
      if numbers[i] > numbers[j]
        numbers.insert(i, numbers.delete_at(j))
      end
      i, j = i + 1, j + 1
    end
  end
  numbers
end

def bubble_sort_by numbers, &how
  (numbers.length - 1).times do
    i = 0
    j = 1
    while j < numbers.length
      if (how.call numbers[i], numbers[j]) > 0
        numbers.insert(i, numbers.delete_at(j))
      end
      i, j = i + 1, j + 1
    end
  end
  numbers
  
  
end