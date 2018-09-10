# Part 3

class BookInStock

  def initialize(isbn, price) 
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @@isbn
  end
  
  def price
    @@price
  end
  
  def isbn=(new_isbn)
    if new_isbn.length == 0
      raise ArgumentError.new 'You must enter book\'s ISBN.'
    else
      @@isbn = new_isbn
    end
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError.new 'The price of the book should > 0.'
    else
      @@price = new_price
    end
  end
  
  def price_as_string
    '$%.2f' % self.price
  end
end
