require File.join(File.dirname(__FILE__), 'core')

module Fog
  module Bluebox

    extend Fog::Provider

    service(:compute, 'bluebox/compute')

    def self.new(attributes = {})
      location = caller.first
      warning = "[yellow][WARN] Fog::Bluebox#new is deprecated, use Fog::Bluebox::Compute#new instead[/]"
      warning << " [light_black](" << location << ")[/] "
      Formatador.display_line(warning)
      Fog::Bluebox::Compute.new(attributes)
    end

  end
end
