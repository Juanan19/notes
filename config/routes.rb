Rails.application.routes.draw do
  
  get 'notes/notes'

  resources :notes
  
  root 'notes#index'

end
