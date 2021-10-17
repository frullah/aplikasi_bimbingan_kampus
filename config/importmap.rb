# Use direct uploads for Active Storage (remember to import "@rails/activestorage" in your application.js)
# pin "@rails/activestorage", to: "activestorage.esm.js"

# Use node modules from a JavaScript CDN by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.js"
pin "@hotwired/stimulus", to: "stimulus.js"
pin "@hotwired/stimulus-importmap-autoloader", to: "stimulus-importmap-autoloader.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.1/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.10.1/lib/index.js"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
