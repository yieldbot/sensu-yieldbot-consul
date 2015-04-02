require 'json'

# encoding: utf-8
module SensuYieldbotConsul
  # This defines the version of the gem
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 1

    STRING = [MAJOR, MINOR, PATCH].compact.join('.')

    NAME   = 'Sensu-Yieldbot-Consul'
    BANNER = "#{NAME} v%s"

    module_function

    def version
      format(BANNER, STRING)
    end

    def json_version
      {
        'version' => STRING
      }.to_json
    end
  end
end


#
# Set gem version
#
# module SensuYieldbotConsul
#   # Gem version
#   VERSION = '0.0.1'
#   # NAME = 'Sensu-Yieldbot-Consul'
#   # TOTAL = format(NAME, VERSION)
#   # def json_version
#   #       {
#   #         'version' => TOTAL
#   #       }.to_json
#   #     end
# end
