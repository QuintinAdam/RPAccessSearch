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


