class HomeScreen < PM::TableScreen
  title "Access Search"
  stylesheet HomeScreenStylesheet
  refreshable
  searchable placeholder: "Search offers"
  row_height :auto, estimated: 44

  def on_load
    # set_nav_bar_button :left, action: :show_menu, title: 'hi'
    set_nav_bar_button :left, action: :show_menu, image: FIFontAwesomeIcon.reorderIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)#, , color: rmq.color.black
    set_nav_bar_button :right, action: :nav_right_button, image: FIFontAwesomeIcon.mapMarkerIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)#, , color: rmq.color.black
    @offers = []
    load_async
  end

  def table_data
      [{
        cells: @offers.map do |offer|
          {
            title: offer.title,
            subtitle: offer.description,
            action: :show_offer,
            arguments: { offer: offer }
          }
        end
      }]
    end

  # fixes [HomeScreen show_menu] error
  def show_menu
    app_delegate.show_menu
  end

  def nav_right_button
    mp 'Right button'
  end

  def on_refresh
    load_async
  end

  def load_async
    # Assuming we're loading offers from some cloud service
    Offer.async_load do |offers|
      @offers = offers
      stop_refreshing
      update_table_data
    end
  end

  def show_offer(offer)
    open ShowOfferScreen.new({ offer: offer })
  end
end
