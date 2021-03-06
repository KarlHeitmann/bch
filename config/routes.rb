Rails.application.routes.draw do
  resources :posts
  devise_for :admins
  root to: 'static_pages#inicio'

  get 'static_pages/inicio'
  get 'static_pages/cursos'
  get 'static_pages/tarifas'
  get 'static_pages/contacto'
  get 'static_pages/nosotros'
  post 'static_pages/contacto_create'
  get 'static_pages/noticias'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
