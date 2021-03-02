class Attendee
  attr_reader :name, :budget

  def initialize(name_and_budget)
    @name = name_and_budget[:name]
    @budget = name_and_budget[:budget].delete("$").to_i
  end
end
