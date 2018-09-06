Rails.application.routes.draw do
  resources :list_items
  resources :lists
  root to: "tasks#not_completed"
  resources :tasks do
    collection do
      get 'completed'
      get 'not_completed'
    end
  end

end
