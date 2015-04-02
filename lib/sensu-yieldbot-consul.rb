
require 'sensu-yieldbot-consul/version'

# Load the defaults

module SensuYieldbotConsul
  class << self
    attr_writer :ui
  end

  class << self
    attr_reader :ui
  end
end
