require 'spec_helper'

describe Testimonial do
  describe "validation" do
    it "should require name" do
      testimonial = create_testimonial(:name => nil)
      testimonial.should have(1).error_on(:name)
    end

    it "should require location" do
      testimonial = create_testimonial(:location => nil)
      testimonial.should have(1).error_on(:location)
    end

    it "should require description" do
      testimonial = create_testimonial(:description => nil)
      testimonial.should have(1).error_on(:description)
    end

    it "should be valid with all fields" do
      testimonial = create_testimonial
      testimonial.should be_valid
    end
  end

  describe "searching" do
    it "should find featured" do
      featured = create_testimonial(:featured => true)
      create_testimonial(:featured => false)

      Testimonial.featured.should have(1).testimonial
    end
  end

  def create_testimonial(options={})
    Testimonial.create({:name => 'John', :location => 'New York', :description => 'Me likey!'}.merge(options))
  end
end
