class MenuDrawer < PM::Menu::Drawer

  # class MenuDrawer < PM::Menu::Drawer

  #   def setup
  #     self.center = HomeScreen.new(nav_bar: true)
  #     self.left = NavigationScreen
  #     self.to_show = [:pan_bezel, :pan_nav_bar]
  #     self.transition_animation = :swinging_door
  #     self.max_left_width = 250
  #     self.shadow = false
  #   end

  # end

  def setup

    tab_bar = ProMotion::TabBarController.new(
      UINavigationController.alloc.initWithRootViewController(HomeScreen.alloc.init),
      HomeScreen.new(nav_bar: true, toolbar: true),
      HomeScreen.new(nav_bar: true, toolbar: true),
      # GenieScreen.new(nav_bar:true, toolbar: true),
      # ReceiptScreen.new(nav_bar:true, external_links: false, scale_to_fit: true)
    )
    # hostess_screen = HostessScreen.new(nav_bar:true, toolbar: true)

    self.center = HomeScreen.new(nav_bar: true, toolbar: true)
    self.right = tab_bar
    self.left = NavigationScreen.new(nav_bar: true)
    self.shadow = false
    self.animationVelocity = 2000.0 if Device.ipad?
    self.to_show = []
    self.to_hide = []

    set_width
  end

  def set_width
    self.max_right_width = Device.screen.width
  end

end
