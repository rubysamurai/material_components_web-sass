module MaterialComponentsWeb
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'material_components_web-sass.assets.precompile' do |app|
          %w(stylesheets javascripts fonts).each do |sub|
            app.config.assets.paths << root.join('vendor/assets', sub).to_s
          end

          unless Sprockets::Rails::VERSION.split('.', 2)[0].to_i >= 3
            app.config.assets.precompile << %r(material-icons/MaterialIcons-Regular\.(?:eot|ttf|woff|woff2?)$)
            app.config.assets.precompile << %r(roboto/Roboto-[\w-]+\.(?:ttf|woff|woff2?)$)
          end
        end
      end
    end
  end
end
