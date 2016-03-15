GirFFI::setup :WebKit

class Brtk
  class WebRenderer < Base::Widget
    widget WebKit::WebView

    def open(uri)
      widget.open uri
    end
  end
end
