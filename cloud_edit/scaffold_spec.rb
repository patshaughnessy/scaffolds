Scaffoldhub::Specification.new do

  base_url  'https://github.com/your_name/your_repo'
  name 'cloud_edit'

  metadata do
    description 'The cloud_edit scaffold.'
    screenshot 'cloud_edit_screenshot.png'
    tag 'backbone'
    tag 'ajax'
    blog_post 'http://www.jamesyu.org/2011/01/27/cloudedit-a-backbone-js-tutorial-by-example'
  end

  with_options :src => 'templates' do
    model      'model.rb'
    migration  'migration.rb'
    controller 'controller.rb'
    template   'form.jst',        :dest => 'app/views/PLURAL_NAME', :rename => 'NAME.jst'
    template   'collection.jst',  :dest => 'app/views/PLURAL_NAME', :rename => 'PLURAL_NAME_collection.jst'
    view       'index.html.erb'
    file       'layout.html.erb', :dest => 'app/views/layouts',     :rename => 'PLURAL_NAME.html.erb'
    file       'assets.yml',      :dest => 'config'

    with_options :src => 'javascripts', :dest => 'public/javascripts' do
      template 'collection.js',   :dest => 'collections',           :rename => 'PLURAL_NAME.js'
      template 'controller.js',   :dest => 'controllers',           :rename => 'PLURAL_NAME.js'
      template 'model.js',        :dest => 'models',                :rename => 'NAME.js'
      template 'edit.js',         :dest => 'views'
      template 'index.js',        :dest => 'views'
      template 'notice.js',       :dest => 'views'
      file 'application.js'
      file 'backbone.js'
      file 'underscore.js'
      file 'jquery-1.4.4.min.js'
      file 'jquery.dotimeout.js'
      file 'json2.js'
    end

    with_options :src => 'stylesheets', :dest => 'public/stylesheets' do
      file 'application.css'
      file 'reset.css'
    end
  end

  gem 'jammit'
end
