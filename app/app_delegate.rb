class AppDelegate < PM::Delegate

  status_bar true, animation: :fade

  def on_load(app, options)
    @menu = open MenuDrawer

    # @api_store = AFMotion::Client.build("https://store-demo.adcrws.com/v1/stores") do
    #   header "Accept", "application/json"
    #   response_serializer :json
    # end
    # @api_location = AFMotion::Client.build("https://location-demo.adcrws.com/v1/locations") do
    #   header "Accept", "application/json"
    #   response_serializer :json
    # end
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

