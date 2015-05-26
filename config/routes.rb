JoincicAppMt::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'joincics#index'

  resources :joincics, only: [] do
    get 'show_schools', on: :collection
    get 'show_active_students', on: :member
    get 'show_school_students', on: :member
  end


end
