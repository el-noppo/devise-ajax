DeviseAjax::Application.routes.draw do

  root to: 'high_voltage/pages#show', id: 'home'

  devise_for :users, :controllers => {registrations: 'registrations'}

  match 'remote_sign_up', to: 'remote_content#remote_sign_up', via: [:get]

end
