GirFFI::setup :WebKit

class Brtk
  class WebRenderer < Base::Widget
    widget WebKit::WebView

    def uri=(uri)
      widget.open uri
    end

    def on_onload_event(web_frame)
      send_uri uri
    end

    def uri
      widget.get_property("uri")
    end
  end
end
