class HomeScreen < PM::Screen
  title "Access Search"
  stylesheet HomeScreenStylesheet

  def on_load
    set_nav_bar_button :left, action: :show_menu, image: FIFontAwesomeIcon.reorderIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)
    set_nav_bar_button :right, action: :nav_right_button, image: FIFontAwesomeIcon.mapMarkerIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)
  end

  def show_menu
    app_delegate.show_menu
  end

  def nav_right_button
    mp 'Right button'
  end

  def find_offers
    MotionAccess::Offer.search do |response|
      if response.success?
        offers = response.data
        puts offers
        open app_delegate.ListScreen(offers) if offers.length > 0
        offers.each do |offer|
          mp "offer title: #{offer.title}"
        end
      else
        mp response.error.message
      end
    end
  end
end
