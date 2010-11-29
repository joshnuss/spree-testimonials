class Testimonial < ActiveRecord::Base
  validates_presence_of :name, :location, :description

  scope :featured, where(:featured => true)
end
