Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :projects do
        member do 
          namespace :projects, path: '' do
            resources :segments, param: :segment_id
            resources :transactions, param: :transaction_id
          end
        end
      end
    end
  end

  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
end
