module Spree
  module StockItemDecorator
    
    def self.prepended(base)
      base.self.whitelisted_ransackable_associations = ['variant']
    end

  end
end

Spree::StockItem.prepend(Spree::StockItemDecorator)
