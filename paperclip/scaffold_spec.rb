Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the speciied folder must contain this file
  base_url  'https://github.com/patshaughnessy/scaffolds/tree/master/paperclip'

  # The name of your new scaffold: should be a single word
  name 'paperclip'

  # Metadata about this scaffold - this info is only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'Upload/download file attachments with the Paperclip gem.'

    # 4x3 aspect ratio screen shot
    screenshot 'paperclip_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'paperclip'

    # Optionally specify an example of a scaffold parameter
    parameter_example 'ATTACHMENT_NAME'

    # Optionally post a link to an article you write explaining how the scaffold works.
    blog_post 'http://patshaughnessy.net/2011/3/13/view-mapper-for-rails-3-scaffoldhub'
  end

  # Add the paperclip gem to the Gemfile
  gem 'paperclip'

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

  post_install_message <<MESSAGE
To upload and download file attachments in your new scaffold:
- Run "rake db:migrate" to create your new PLURAL_NAME database table
- Run your Rails server
- Open http://localhost:3000/PLURAL_NAME
... to see the index page. Now when you create or edit a NAME record
you will see a browse button appear for selecting a file attachment.
MESSAGE

end
