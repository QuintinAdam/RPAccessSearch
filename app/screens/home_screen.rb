class HomeScreen < PM::TableScreen
  title "Access Search"
  stylesheet HomeScreenStylesheet

  def on_load
    set_nav_bar_button :left, action: :show_menu, image: FIFontAwesomeIcon.reorderIcon.imageWithBounds([[0,0],[25,25]])#, , color: rmq.color.black
    set_nav_bar_button :right, action: :show_menu, image: FIFontAwesomeIcon.mapMarkerIcon.imageWithBounds([[0,0],[25,25]])#, , color: rmq.color.black


    @hello_world = append!(UILabel, :hello_world)
  end

  # fixes [HomeScreen show_menu] error
  def show_menu
    app_delegate.show_menu
  end

  def nav_left_button
    mp 'Left button'
  end

  def nav_right_button
    mp 'Right button'
  end

end
