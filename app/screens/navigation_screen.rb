class NavigationScreen < ProMotion::TableScreen

  title "Menu"

  def table_data
    [{
      title: nil,
      cells: [
        {
          title: 'Home',
          action: :swap_center_controller,
          arguments: HomeScreen.new(nav_bar: true)
        },
        {
          title: 'Favorite Deals'
        },
        {
          title: 'Default Settings',
          height: 20,
          properties: {
            background_color: RubyMotionQuery::Color.tint
          }#,
          # image: {
          #   image: "any logo",
          # }
        },
        {
          title: 'Distance From Me'
        },
        {
          title: 'Mobile Offers Only'
        },
        {
          title: 'Account',
          height: 20,
          properties: {
            background_color: RubyMotionQuery::Color.tint
          }
        },
        {
          title: 'My Account'
        },
      ]
    }]
  end

  def swap_center_controller(screen_class)
    app_delegate.menu.center_controller = screen_class
    app_delegate.menu.hide
  end

end
