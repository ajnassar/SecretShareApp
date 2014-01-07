SecretShareAjax::Application.routes.draw do
  resources :secrets, :only => [:create]

  resources :users, :only => [:index, :create, :new, :show] do
    resources :secrets, :only => [:new]
    resource :friendship, :only => [:create]
  end

  resource :friendship, :only => [:destroy]

  resource :session, :only => [:create, :destroy, :new]

  root :to => "users#show"
end
