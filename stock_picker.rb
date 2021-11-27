def stock_picker(price_arr)
    best_day_to_sell = price_arr.length - 1
    best_day_to_buy = price_arr.length - 1
    max_sell_price = 0
    max_sell_price_day = 0
    max_profit = 0
    (price_arr.length - 1).downto(0)do |cur_day|
        cur_price = price_arr[cur_day]
        if cur_price > max_sell_price
            max_sell_price = cur_price
            max_sell_price_day = cur_day
        end
        profit = max_sell_price  - cur_price
        if profit > max_profit
            best_day_to_buy = cur_day
            best_day_to_sell = max_sell_price_day
        end
    end
    [best_day_to_buy, best_day_to_sell]
end

print stock_picker([17,3,6,9,15,8,6,1,10])