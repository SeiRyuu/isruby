if Rails.env == "development"
  require 'factory_girl'
  require File.expand_path(File.dirname(__FILE__) + '/../../spec/factories')
end
