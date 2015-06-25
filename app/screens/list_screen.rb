class ListScreen < PM::TableScreen
  attr_accessor :offers
  title "list Search"
  stylesheet HomeScreenStylesheet
  refreshable
                # callback: :on_refresh,
                # pull_message: "Pull to resfresh",
                # refreshing: "Refresing data...",
                # updated_format: "Last updated at %s",
                # updated_time_format: "%l:%M %p"
  searchable placeholder: "Search offers"
  row_height :auto, estimated: 44

  def on_load
    set_nav_bar_button :left, action: :show_menu, image: FIFontAwesomeIcon.reorderIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)#, , color: rmq.color.black
    set_nav_bar_button :right, action: :nav_right_button, image: FIFontAwesomeIcon.mapMarkerIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)#, , color: rmq.color.black
    @offers = offers
    # load_async
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

  # def on_refresh
  #   load_async
  # end

  def show_offer(offer)
    # open ShowOfferScreen.new({ offer: offer })
  end
end
