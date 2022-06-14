Rails.application.routes.draw do
  resources :users
  resources :tasks
  scope '/api' do
    get 'task', to: 'tasks#content'
  end
end
