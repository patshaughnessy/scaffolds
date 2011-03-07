Scaffoldhub::Specification.new do |s|

  s.base_url 'https://github.com/patshaughnessy/scaffolds/raw/master/default'

  s.active_record_file :src => 'templates/model.rb'

  s.controller_file :src => 'templates/controller.rb'

  s.erb_file :src => 'templates/_form.html.erb'
  s.erb_file :src => 'templates/edit.html.erb'
  s.erb_file :src => 'templates/index.html.erb'
  s.erb_file :src => 'templates/new.html.erb'
  s.erb_file :src => 'templates/show.html.erb'
end
