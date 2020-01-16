module Spree
  module AppConfigurationDecorator
    
    def self.prepended(base)
      base.preference :stock_items_per_page, :integer, default: 15
    end

  end
end

Spree::AppConfiguration.prepend(Spree::AppConfigurationDecorator)
