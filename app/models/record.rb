class Record < ActiveRecord::Base
  attr_accessible :location

  validates_presence_of :location
end