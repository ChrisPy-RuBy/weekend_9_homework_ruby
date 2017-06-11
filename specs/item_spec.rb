require('minitest/autorun')
require('minitest/rg')
require_relative('../item.rb')

class ItemTest < Minitest::Test

  def setup
    @item = Item.new("crisps", "walkers", 0.70)
  end

  def test_item_has_name()
    assert_equal("crisps", @item.name)
  end

end