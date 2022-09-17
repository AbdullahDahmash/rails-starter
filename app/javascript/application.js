// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Alpine from 'alpinejs'
import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "trix"
import "@rails/actiontext"
import "helpers/alpine-turbo-adapter" // https://github.com/SimoTod/alpine-turbo-drive-adapter/issues/40
import "@oddcamp/cocoon-vanilla-js"
import "controllers"

Alpine.start()
Rails.start()
ActiveStorage.start()

window.Alpine = Alpine
