class Record < ActiveRecord::Base
  attr_accessible :location, :picture

  has_attached_file :picture, styles: { medium: "600x480>", thumb: "130x130>" }, \
                              default_url: 'http://placehold.it/130x130'

  validates_presence_of :location
end