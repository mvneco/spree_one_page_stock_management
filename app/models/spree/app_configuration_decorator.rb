module Spree
  module AppConfigurationDecorator
    
    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)

      base.preference :stock_items_per_page, :integer, default: 15
    end

  end
end

Spree::AppConfiguration.prepend(Spree::AppConfigurationDecorator)
