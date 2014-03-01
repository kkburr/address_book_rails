class City < ActiveRecord::Base
  validates :elevation, numericality: {
    :greater_than_or_equal_to => 3315,
    :if => lambda {|city| city.state = "CO"},
    :message => "is too low, lowest point in Colorado is 3315"
  }
end