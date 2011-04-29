Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the speciied folder must contain this file
  base_url  'https://github.com/patshaughnessy/scaffolds/tree/master/autocomplete'

  # The name of your new scaffold: should be a single word
  name 'autocomplete'

  # Metadata about this scaffold - this info is only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'The autocomplete scaffold.'

    # 4x3 aspect ratio screen shot
    screenshot 'autocomplete_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'jquery'
    tag 'autocomplete'

    # Optionally specify an example of a scaffold parameter
    parameter_example 'FIELD_NAME'
  end

  # Optionally post a link to an article you write explaining how the scaffold works.
  blog_post 'http://patshaughnessy.net/2011/3/13/view-mapper-for-rails-3-scaffoldhub'

  # Define a model template - this ERB file will be used to generate a new
  # model class with this path & filename: app/models/NAME.rb
  model 'templates/model.rb'

  # Define an ActiveRecord migration template - this ERB file will be used to generate a new
  # migration class with this path & filename: db/migrate/TIMESTAMP_create_PLURAL_NAME.rb
  migration 'templates/migration.rb'

  # Define a controller template - this ERB file will be used to generate a new
  # controller class with this path & filename: app/controllers/PLURAL_NAME.rb
  controller 'templates/controller.rb'

  # You can use "with_options" to specify the same source folder for a series of templates:
  with_options :src => 'templates' do
    view '_form.html.erb'
    view 'new.html.erb'
    view 'edit.html.erb'
    view 'index.html.erb'
    view 'show.html.erb'
    view 'layout.erb', :dest => 'app/views/layouts'
  end

  with_options :src => 'templates/jquery', :dest => 'public/javascripts' do
    file 'jquery-1.4.4.min.js'
    file 'jquery-ui-1.8.10.custom.min.js'
  end

  file 'templates/jquery/ui-lightness/jquery-ui-1.8.10.custom.css', :dest => 'public/stylesheets/ui-lightness'

  with_options :src => 'templates/jquery/ui-lightness/images/', :dest => 'public/stylesheets/ui-lightness/images' do
    file 'ui-bg_diagonals-thick_18_b81900_40x40.png'
    file 'ui-bg_diagonals-thick_20_666666_40x40.png'
    file 'ui-bg_flat_10_000000_40x100.png'
    file 'ui-bg_glass_100_f6f6f6_1x400.png'
    file 'ui-bg_glass_100_fdf5ce_1x400.png'
    file 'ui-bg_glass_65_ffffff_1x400.png'
    file 'ui-bg_gloss-wave_35_f6a828_500x100.png'
    file 'ui-bg_highlight-soft_100_eeeeee_1x100.png'
    file 'ui-bg_highlight-soft_75_ffe45c_1x100.png'
    file 'ui-icons_222222_256x240.png'
    file 'ui-icons_228ef1_256x240.png'
    file 'ui-icons_ef8c08_256x240.png'
    file 'ui-icons_ffd27a_256x240.png'
    file 'ui-icons_ffffff_256x240.png'
  end
end
