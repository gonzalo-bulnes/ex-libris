class Book < ActiveRecord::Base
  attr_accessible :author, :editor, :title, :publisher, \
                  :year, :volume, :number, :series, :address, \
                  :edition, :month, :note, :key

  validates_presence_of :author, :editor, :title, :publisher, :year
end
