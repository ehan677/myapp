Rails.application.routes.draw do
  get '/index' => 'belajar_ruby#index'
  get '/tentang' => 'belajar_ruby#tentang'
  get '/BelajarRuby/dota/:id' => 'belajar_ruby#dota'
  get '/input' => 'belajar_ruby#input'
  post '/membuat' => 'belajar_ruby#membuat'
  get '/BelajarRuby/edit/:id' => 'belajar_ruby#edit'
  post '/BelajarRuby/update/:id' => 'belajar_ruby#update'
  get '/BelajarRuby/delete/:id' => 'belajar_ruby#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get '/belajar_ruby', to: 'belajar_ruby#index'
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
