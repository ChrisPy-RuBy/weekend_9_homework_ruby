require('minitest/autorun')
require('minitest/rg')
require_relative('../basket.rb')
require_relative('../item.rb')
require_relative('../bread.rb')

class BasketTest < Minitest::Test

  def setup
    @basket1 = Basket.new("basket")
    @item1 = Item.new("crisps", "walkers", 0.70)
    @bread = Bread.new("Hovis", 1.10)
  end

  def test_basket_exists
    assert_equal("basket", @basket1.name)
  end

  def test_basket_array_add
    @basket1.add_item_to_basket(1)
    assert_equal(1, @basket1.number_of_items_in_basket())
  end

  def test_basket_array_remove
    @basket1.add_item_to_basket(1)
    @basket1.add_item_to_basket(1)
    @basket1.remove_item_from_basket()
    assert_equal(1, @basket1.number_of_items_in_basket())
  end

  def test_add_item_to_basket
    @basket1.add_item_to_basket(@item1)
    assert_equal(1, @basket1.number_of_items_in_basket())
  end

  def test_add_bread_to_basket
    @basket1.add_item_to_basket(@bread)
    assert_equal(1, @basket1.number_of_items_in_basket())
  end





end