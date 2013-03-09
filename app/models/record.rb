class Record < ActiveRecord::Base
  attr_accessible :location, :number_of_books_estimate

  validates_presence_of :location, :number_of_books_estimate
end
