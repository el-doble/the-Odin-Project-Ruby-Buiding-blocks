def stock_picker(stock_prices)
	best_day_to_buy, best_day_to_sell, highest_profit = 0, 0, 0
	stock_prices.map.with_index(1) do |buy_price, day_of_week|
		for sell_price in day_of_week...stock_prices.length do 
			todays_profit = (0 - buy_price) + stock_prices[sell_price]
			if todays_profit > highest_profit
				highest_profit = todays_profit
				best_day_to_sell =  stock_prices.index(stock_prices[sell_price])
				best_day_to_buy = stock_prices.index(stock_prices[0..best_day_to_sell].min)
			end
		end
	end
	return [best_day_to_buy, best_day_to_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])