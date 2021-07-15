def total_price(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount += prices[index]
        index +=1
    end
    amount
end


def refund(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount -= prices[index]
        index +=1
    end
    amount
end

def show_discounts(prices)
    amount_off = 0
    index = 0
    while index < prices.length
        amount_off = prices[index]/3
        puts format(" Total discount:  $%.2f", amount_off)
        index +=1
    end
end

prices = [3.99, 25.00, 8.99]

puts format("$%.2f", total_price(prices))
puts format("$%.2f", refund(prices))
puts show_discounts(prices)
 
# version 2, my way
def loop_through_array (array, operation)
    amount = 0
    index = 0
    while index < array.length
        if operation == "total" || operation == "refund"
            amount += array[index]
        elsif operation == "discounts"
            amount = array[index] / 3.0
            puts format( " Total discount:  $%.2f", amount)
        end
        index += 1
    end
    if operation == "total"
        return amount
    elsif operation == "refund"
        return -1*amount
    end
end

prices = [3.99, 25.00, 8.99]

puts "Version 1"
puts format("$%.2f", total_price(prices))
puts format("$%.2f", refund(prices))
puts show_discounts(prices)


puts "Version 2"

puts loop_through_array(prices, "total")
puts loop_through_array(prices, "refund")
puts loop_through_array(prices, "discounts")


#Which version of the code do you like better - the code in the last commit (page 165) or the previous one (page 164)? Why?
#    the first version of the code while DRY, is easier to understand.  HOWEVER my version 2 is slightly better than the version in the book
#    a better way to refactor would be to combine the first 2 methods (essentially doing the same thing, but just one is negative)
#    the 3rd method is just too different and introduces alot of the necessity for all of the "if" statements

#Is there ever a good reason to repeat yourself in code (i.e. not have DRY code)? Give an example that justifies your answer.
#    repeating yourself where it prevents the code from being discombobulated and confusing is better.  