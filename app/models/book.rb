class Book < ActiveRecord::Base
  attr_accessible :address, :author, :editor, :edition, :isbn, \
                  :key, :month, :note, :number, :publisher, \
                  :record_id, :series, :title, :volume, :year

  belongs_to :record

  validates_presence_of :publisher, :title, :year
end
