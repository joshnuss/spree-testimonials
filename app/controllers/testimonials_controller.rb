class TestimonialsController < Spree::BaseController
  def index
    @testimonials = Testimonial.featured
  end

private
  def accurate_title
    I18n.t('testimonials')
  end
end
