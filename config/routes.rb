Rails.application.routes.draw do
  devise_for :users
  require 'resque/server'
  mount Resque::Server, at: '/jobs'
end
