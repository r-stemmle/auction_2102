class Item
  attr_reader :name, :bids

  def initialize(name)
    @name = name
    @bids = {}
  end

  def current_high_bid
    @bids.values.max
  end

  def add_bid(attendee, amount)
    @bids[attendee] = amount
  end
end
