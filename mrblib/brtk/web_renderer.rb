GirFFI::setup :WebKit

class Brtk
  class WebRenderer < Base::Widget
    def initialize(brtk)
      super
      setup WebKit::WebView
    end

    def open(uri)
      widget.open uri
    end
  end
end
