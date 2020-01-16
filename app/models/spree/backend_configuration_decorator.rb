module Spree
  module BackendConfigurationDecorator
    STOCKS_TABS ||= [:stock_items]
  end
end

Spree::BackendConfiguration.prepend(Spree::BackendConfigurationDecorator)
