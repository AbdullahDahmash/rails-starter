Rails.application.routes.draw do
  require 'resque/server'
  mount Resque::Server, at: '/jobs'
end
