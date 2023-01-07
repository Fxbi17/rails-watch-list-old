Rails.application.routes.draw do
  resources :lists, only: %i[new show create index] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
