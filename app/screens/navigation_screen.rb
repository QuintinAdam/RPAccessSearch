class NavigationScreen < ProMotion::TableScreen

  title "Menu"
  searchable placeholder: "Search This Table", hide_initially: true
  row_height :auto, estimated: 44
  # long_press_action: :long_press_action,
  def table_data
    button1 = set_attributes UIButton.buttonWithType(UIButtonTypeRoundedRect), {
      "setTitle:forState:" => [ "A", UIControlStateNormal ]
    }
    button2 = set_attributes UIButton.buttonWithType(UIButtonTypeRoundedRect), {
      "setTitle:forState:" => [ "B", UIControlStateNormal ]
    }
    button1.frame = [[ 0, 0 ], [ 20, 20 ]]
    button2.frame = [[ 0, 0 ], [ 20, 20 ]]
    [{
      title: nil,
      cells: [
        {
          title: (:home.awesome_icon + ' Home').color(:red), #
          action: :swap_center_controller,
          arguments: HomeScreen.new(nav_bar: true),
          accessory: { view: button1 }
        },
        {
          title: :star.awesome_icon + ' Favorite Deals'
        },
      ]
    },
    {
      title: 'Default Settings',
      cells: [
        {
          title: ((:location_arrow.awesome_icon).color(:blue) + ' Distance From Me')
        },
        {
          title: :mobile.awesome_icon + ' Mobile Offers Only'
        }
      ]
    },
    {
      title: 'Account',
      cells: [
        {
          title: :user.awesome_icon + ' My Account'
        }
      ]
    }]
  end

  def swap_center_controller(screen_class)
    app_delegate.menu.center_controller = screen_class
    app_delegate.menu.hide
  end

end
