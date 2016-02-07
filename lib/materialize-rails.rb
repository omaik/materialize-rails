require 'sass'
require "materialize-rails/version"

module MaterializeRails
  class << self
    def load!
      require 'materialize-rails/engine' if defined?(::Rails)
      ::Sass.load_paths << stylesheets_path
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'app', 'assets'
    end

    def gem_path
      @gem_path ||= File.dirname File.expand_path('../..', __FILE__)
    end
  end
end

MaterializeRails.load!