Rails.application.routes.draw do
  resources :testimonials
  namespace :admin do 
    resources :testimonials
  end
end
