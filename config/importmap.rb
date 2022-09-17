# Use direct uploads for Active Storage (remember to import "@rails/activestorage" in your application.js)
# pin "@rails/activestorage", to: "activestorage.esm.js"

# Use node modules from a JavaScript CDN by running ./bin/importmap

pin "application"
pin_all_from "app/javascript/helpers", under: "helpers"
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/channels", under: "channels"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "@hotwired/turbo-rails", to: "https://ga.jspm.io/npm:@hotwired/turbo-rails@7.1.0/app/javascript/turbo/index.js"
pin "@rails/actiontext", to: "https://ga.jspm.io/npm:@rails/actiontext@7.0.0/app/javascript/actiontext/index.js"
pin "@rails/activestorage", to: "https://ga.jspm.io/npm:@rails/activestorage@7.0.0/app/assets/javascripts/activestorage.esm.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.0/lib/assets/compiled/rails-ujs.js"
pin "alpinejs", to: "https://ga.jspm.io/npm:alpinejs@3.7.1/dist/module.esm.js"
pin "trix", to: "https://ga.jspm.io/npm:trix@1.3.1/dist/trix.js"
pin "@hotwired/turbo", to: "https://ga.jspm.io/npm:@hotwired/turbo@7.1.0/dist/turbo.es2017-esm.js"
pin "@rails/actioncable/src", to: "https://ga.jspm.io/npm:@rails/actioncable@6.1.4/src/index.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.13/nodelibs/browser/process-production.js"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.1.0/dist/stimulus.js"
pin "@hotwired/stimulus-importmap-autoloader", to: "stimulus-importmap-autoloader.js"
pin "lodash", to: "https://ga.jspm.io/npm:lodash@4.17.21/lodash.js"
pin "@oddcamp/cocoon-vanilla-js", to: "https://ga.jspm.io/npm:@oddcamp/cocoon-vanilla-js@1.1.3/index.js"
pin "stimulus-use", to: "https://ga.jspm.io/npm:stimulus-use@0.50.0/dist/index.js"
