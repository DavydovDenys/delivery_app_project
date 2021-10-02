Rails.application.routes.draw do
  devise_for :delivery_managers, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
