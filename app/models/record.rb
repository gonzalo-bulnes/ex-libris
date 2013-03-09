class Record < ActiveRecord::Base
  attr_accessible :location, :number_of_books_estimate

  has_attached_file :picture, styles: { medium: "600x480>", thumb: "130x130>" }, \
                              default_url: 'http://placehold.it/130x130'

  validates_presence_of :location, :number_of_books_estimate
  validates_attachment :picture, presence: true, \
                                 content_type: { content_type: ["image/png", "image/jpg"] }, \
                                 size: { less_than: 1.megabyte }
end
