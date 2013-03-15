class Book < ActiveRecord::Base

  validates_presence_of :publisher, :title, :year
end
