# Code your cash register here!

class AmazonTransaction
  attr_accessor :total, :items, :discount 
  
  def initialize(discount = 0)
    @total = 0 
    @items = []
    @discount = discount
  end   
  def add_item(title, price, quantity = 1)
    @total+=price*quantity
    until quantity == 0 
    @items.push(title)
    quantity-=1
  end
end 
  def apply_discount
    @total = (100.0-@discount)/100*@total 
  end


end