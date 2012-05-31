require 'active_support/all' # SMELL

require 'rack'
require 'happy/context'
require 'happy/controller'

module Happy
  module Errors
    class Base < StandardError ; end
    class NotFound < Base ; end
  end

  def self.env
    ActiveSupport::StringInquirer.new(ENV['RACK_ENV'] || 'development')
  end
end
