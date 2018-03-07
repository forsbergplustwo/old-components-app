require "forsberg_app/engine"
require "autoprefixer-rails"
require "bootstrap-sass"

module ForsbergApp

  class Engine < ::Rails::Engine
    isolate_namespace ForsbergApp
  end

end # ForsbergApp
