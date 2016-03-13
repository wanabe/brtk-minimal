class Brtk
  class BrowserWindow < Base::Widget
    def initialize(uri = nil)
      setup Gtk::ScrolledWindow, nil,nil
      widget.set_policy Gtk::PolicyType::AUTOMATIC, Gtk::PolicyType::AUTOMATIC

      add WebRenderer.new(uri)
    end
  end
end
