class Brtk
  class BrowserWindow < Base::Widget
    def initialize(brtk)
      super
      setup Gtk::ScrolledWindow, nil,nil
      widget.set_policy Gtk::PolicyType::AUTOMATIC, Gtk::PolicyType::AUTOMATIC

      add WebRenderer.new(brtk)
    end
  end
end
