# frozen_string_literal: true

require 'pry-byebug'

array = [17, 3, 6, 9, 15, 8, 6, 1, 10, 20, 14, 12]

def stock_picker(array)
  new_array = Array.new(array.length) { Array.new(array.length, 0) }

  array.each_with_index do |price, index_price|
    array.each_with_index do |day, index_day|
      new_array[index_price][index_day] = day - price if index_price <= index_day
      new_array
    end
    new_array
  end

  gains = new_array.map(&:max)
  max_gain = gains.reduce(0) do |max, value|
    max = value if value > max
    max
  end

  day_to_buy = gains.index(max_gain)
  day_to_sell = new_array[day_to_buy].index(max_gain)
  days = [day_to_buy, day_to_sell]
  puts days.to_s
end

stock_picker(array)
