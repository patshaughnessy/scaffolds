Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the speciied folder must contain this file
  base_url  'http://localhost/github/default'

  # The name of your new scaffold: should be a single word
  name 'default'

  # Metadata about this scaffold - this info is only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'The default scaffold.'

    # 4x3 aspect ratio screen shot
    screenshot 'default_screenshot.png'
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
  end
end
