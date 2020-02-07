Deface::Override.new(
  disabled: true,
  virtual_path: 'spree/layouts/admin',
  name: 'add_stock_item_tab',
  insert_after: 'ul.nav-sidebar:last-child',
  text: %q{
      <% if can? :admin, Spree::StockItem %>
        <ul class="nav nav-sidebar border-bottom">
          <%= tab *Spree::BackendConfiguration::STOCKS_TABS, icon: 'th-list' %>
        </ul>
      <% end %>
    }
)
