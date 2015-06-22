class HomeScreen < PM::Screen
  title "Home"
  stylesheet HomeScreenStylesheet

  def on_load
    set_nav_bar_button :left, title: UIImage.imageNamed("list.png"), action: :show_menu
    # set_nav_bar_button :right, title: "Right", action: :show_menu

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
