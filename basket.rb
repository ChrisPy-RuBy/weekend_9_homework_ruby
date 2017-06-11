
class Basket

  attr_accessor :name, :array

  def initialize(name)
    @name = name
    @array = []
  end

  def add_item_to_basket(x)
    @array.push(x)
  end

  def remove_item_from_basket()
    @array.pop
  end

  def number_of_items_in_basket()
    @array.size
  end


end