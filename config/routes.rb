Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User',
                              at: 'api/v1/users',
                              controllers: {
                                registrations: "api/v1/users/registrations"
                              }
end
