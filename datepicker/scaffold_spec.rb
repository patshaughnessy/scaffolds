Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the specified folder must contain this file
  base_url  'https://github.com/patshaughnessy/scaffolds/tree/master/datepicker'

  # The name of your new scaffold: should be a single word
  name 'datepicker'

  # Metadata about this scaffold - these values are only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'Standard Rails scaffolding with the JQuery UI datepicker used on a selected date field. Indicate which date field in the scaffold parameter.'

    # 4x3 aspect ratio screen shot
    screenshot 'datepicker_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'jquery'
    tag 'datepicker'

    # Optionally specify an example of a scaffold parameter
    parameter_example 'DATE_FIELD_NAME'
  end

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
  # You can also specify the same destination folder using the :dest option,
  # or just use the :src and :dest options on each keyword.
  with_options :src => 'templates' do
    view '_form.html.erb'
    view 'new.html.erb'
    view 'edit.html.erb'
    view 'index.html.erb'
    view 'show.html.erb'

    # The layout file needs a different dest folder and file name
    template 'layout.erb', :dest => 'app/views/layouts', :rename => 'PLURAL_NAME.html.erb'
  end

  file 'templates/jquery/ui-lightness/jquery-ui-1.8.12.custom.css', :dest => 'public/stylesheets/ui-lightness'

  with_options :src => 'templates/jquery', :dest => 'public/javascripts' do
    file 'jquery-1.5.1.min.js'
    file 'jquery-ui-1.8.12.custom.min.js'
  end

  post_install_message <<MESSAGE
Follow these steps to use the JQuery datepicker plugin in your
new scaffold:
- Run "rake db:migrate" to create your new PLURAL_NAME database table
- Run your Rails server
- Open http://localhost:3000/PLURAL_NAME
... to see the index page. Now create a new record and click inside
the selected date field and you should see the calendar popup window
appear.
MESSAGE

end
