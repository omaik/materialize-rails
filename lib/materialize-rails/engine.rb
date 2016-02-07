module MaterializeRails
  class Engine < ::Rails::Engine
    initializer 'materialize-rails.assets.precompile' do |application|
      %w(fonts images javascripts stylesheets).each do |type|
        application.config.assets.paths << root.join('vendor', 'assets', type).to_s
      end

      unless Sprockets::Rails::VERSION.starts_with? '3'
        application.config.assets.precompile << %r(material-design-icons/Material-Design-Icons\.(?:eot|svg|ttf|woff|woff2?)$)
        application.config.assets.precompile << %r(roboto/Roboto-[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$)
      end
    end
  end
end
