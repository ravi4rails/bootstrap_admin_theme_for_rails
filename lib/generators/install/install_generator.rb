require 'rails/generators'

class InstallGenerator < ::Rails::Generators::Base

  def add_assets
    js_manifest = 'app/assets/javascripts/application.js'
    css_manifest = 'app/assets/stylesheets/application.css'
    scss_manifest = 'app/assets/stylesheets/application.scss'

    if File.exist?(js_manifest)
      insert_into_file js_manifest, "//= require jquery\n", after: "rails-ujs\n"
      insert_into_file js_manifest, "//= require popper\n", after: "jquery\n"
      insert_into_file js_manifest, "//= require bootstrap\n", after: "popper\n"
    end

    if File.exist?(css_manifest)
      style_require_block = " *= require bootstrap\n"
      insert_into_file css_manifest, style_require_block, after: "require_self\n"
    end

    if File.exist?(scss_manifest)
      insert_into_file scss_manifest, "@import 'bootstrap';\n"
    end

  end

end
