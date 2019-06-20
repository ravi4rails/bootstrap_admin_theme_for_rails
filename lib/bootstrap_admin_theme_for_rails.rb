require "bootstrap_admin_theme_for_rails/version"
require "bootstrap_admin_theme_for_rails/railtie" if defined?(Rails)
module BootstrapAdminThemeForRails

  class Error < StandardError; end

  def self.message
    puts "This is simple bootstrap admin theme for rails 5.x"
  end
end
