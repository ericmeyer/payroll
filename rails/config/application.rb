require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "active_resource/railtie"

module Payroll
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

  end
end
