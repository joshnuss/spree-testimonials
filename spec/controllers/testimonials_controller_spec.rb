require 'spec_helper'

describe TestimonialsController do
  context "GET /index" do
    before do
      Testimonial.should_receive(:featured).and_return(:testimonials)
      get :index
    end

    specify { response.should be_success}
    specify { assigns[:testimonials].should == :testimonials}
  end
end
