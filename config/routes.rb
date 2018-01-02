Rails.application.routes.draw do
  root to: 'admin/dashboard#index'
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User',
                              at: 'api/v1/users',
                              only: %i(sessions registrations),
                              controllers: {
                                registrations: 'api/v1/users/registrations'
                              }
end
