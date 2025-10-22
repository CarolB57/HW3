class Movie < ActiveRecord::Base
  def self.all_ratings
    self.select(:rating).distinct.pluck(:rating)
  end
end