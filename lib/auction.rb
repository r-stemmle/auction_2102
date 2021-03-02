class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def bidder_info
    bidder_object = []
    @items.each do |item|
      item.bids.keys.each do |attendee|
        bidder_object << attendee
      end
    end
    bidders = bidder_object.uniq
    bidder_info = {}
    bidders.each do |bidder|
      bidder_info[bidder] = {
        budget: bidder.budget,
        items: []
        }
    end
    bidder_info.each do |attendee, info|
      @items.each { |item|
        info[:items] << item if
        item.bids.keys.map(&:name).include?(attendee)
      }
      bidder_info
    end
  end

  def bidders
    bidders = []
    @items.map { |item|
      bidders + item.bids.keys.map { |attendee| attendee.name }
                }.flatten.uniq
  end

  def potential_revenue
    @items.map { |item| item.current_high_bid }.compact.sum
  end

  def unpopular_items
    @items.find_all { |item| item.bids == {} }
  end

  def item_names
    @items.map {|item| item.name }
  end

  def add_item(item)
    @items << item
  end

end
