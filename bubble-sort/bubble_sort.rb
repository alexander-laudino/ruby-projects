# frozen_string_literal: true

array = [3, 10, 4, 39, 21, 15, 0, 2, 42, 113]

def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1

  loop do
    swapped = false

    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

puts bubble_sort(array)
