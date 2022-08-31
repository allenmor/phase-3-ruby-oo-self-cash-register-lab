
class CashRegister

    attr_accessor :discount, :total, :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity

        @last_transaction = price * quantity
        for i in 0...quantity do
            @items << item
        end
    end


    def apply_discount
        if @discount > 0
        @total -= @total * (@discount / 100.0)
        "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction 
        @total -= @last_transaction
    end

    
end

