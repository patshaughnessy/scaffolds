Scaffoldhub::Specification.new do |s|

  s.base_url 'https://github.com/patshaughnessy/scaffolds/raw/master/autocomplete'

  s.active_record_file :src => 'templates/model.rb'

  s.controller_file :src => 'templates/controller.rb'

  s.erb_file :src => 'templates/_form.html.erb'
  s.erb_file :src => 'templates/edit.html.erb'
  s.erb_file :src => 'templates/index.html.erb'
  s.erb_file :src => 'templates/new.html.erb'
  s.erb_file :src => 'templates/show.html.erb'
  s.erb_file :src => 'templates/layout.erb',      :dest => 'app/views/layouts'

  s.other_file :src => 'templates/jquery/jquery-1.4.4.min.js',            :dest => 'public/javascripts'
  s.other_file :src => 'templates/jquery/jquery-ui-1.8.10.custom.min.js', :dest => 'public/javascripts'
  s.other_file :src => 'templates/jquery/ui-lightness/jquery-ui-1.8.10.custom.css', :dest => 'public/stylesheets/ui-lightness'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_diagonals-thick_18_b81900_40x40.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_diagonals-thick_20_666666_40x40.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_flat_10_000000_40x100.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_glass_100_f6f6f6_1x400.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_glass_100_fdf5ce_1x400.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_glass_65_ffffff_1x400.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_gloss-wave_35_f6a828_500x100.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_highlight-soft_100_eeeeee_1x100.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-bg_highlight-soft_75_ffe45c_1x100.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-icons_222222_256x240.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-icons_228ef1_256x240.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-icons_ef8c08_256x240.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-icons_ffd27a_256x240.png', :dest => 'public/stylesheets/ui-lightness/images'
  s.other_file :src => 'templates/jquery/ui-lightness/images/ui-icons_ffffff_256x240.png', :dest => 'public/stylesheets/ui-lightness/images'
end
