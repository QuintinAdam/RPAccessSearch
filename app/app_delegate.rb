class AppDelegate < PM::Delegate

  status_bar true, animation: :fade

  def on_load(app, options)
    @menu = open MenuDrawer
  end

  def show_menu
    @menu.show :left
  end
end

MotionAccess::Configuration.configure do |config|
  config.access_token = ENV['ACCESS_TOKEN']
  config.format = "json"
  config.api_environment = "demo"
  config.api_version = "v1"
end

