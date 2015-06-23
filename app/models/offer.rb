class Offer

  def search_offers(options = {})
    url = ""
    AFMotion::HTTP.get(url) do |result|
            puts result.body.first
            if html = result.body
              images = html.scan(/src=\"(.+?\.jpg)\"/).map do |m|
                m.first
              end
              open_images_controller images if images.length > 0
            end
            rmq.animations.stop_spinner
          end
  end
end
