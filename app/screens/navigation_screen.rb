class NavigationScreen < ProMotion::TableScreen

  def table_data
    [{
      title: nil,
      cells: [{},{
        title: 'OVERWRITE THIS METHOD',
        action: :swap_center_controller,
        arguments: HomeScreen.new(nav_bar: true)
      }]
    }]
  end

  def swap_center_controller(screen_class)
    app_delegate.menu.center_controller = screen_class
    app_delegate.menu.hide
  end

end
