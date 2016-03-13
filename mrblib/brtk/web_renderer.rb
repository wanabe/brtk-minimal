GirFFI::setup :WebKit

class Brtk
  class WebRenderer < Base::Widget
    def initialize(uri = nil)
      setup WebKit::WebView
      open uri if uri
    end

    def open(uri)
      widget.open uri
    end
  end
end
