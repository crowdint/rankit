require "rankit/engine"
require 'devise'
require 'cached_belongs_to'
require 'haml-rails'
require 'strong_parameters'

module Rankit
  autoload :Devise, 'rankit/devise/failure_app'
end
