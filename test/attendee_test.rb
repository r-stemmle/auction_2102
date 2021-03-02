require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/auction'
require './lib/attendee'

class AuctionTest < Minitest::Test
  def test_it_can_have_different_attributes
    item2 = Item.new('Bamboo Picture Frame')
    attendee = Attendee.new(name: 'Megan', budget: '$50')

    assert_equal "Megan", attendee.name
    assert_equal 50, attendee.budget
  end

end
