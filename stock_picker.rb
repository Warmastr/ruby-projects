def stock_picker(prices)
  min_price = prices[0] # initializing the minimum price that can exist
  max_profit = 0
  profit = 0
  lowest_price = 0
  highest_price = 0
  result = [] # return the result in an ordered pair of indexes

  prices.each_with_index do |price, day|
    if price < min_price && price != prices.last
      min_price = price
      lowest_price = day
    end
    profit = price - min_price
    if profit > max_profit
      highest_price = day
      max_profit = profit
    end
  end
  result = [lowest_price, highest_price]
end

print stock_picker([17,18,3,6,9,15,8,19,1,10,1]).inspect