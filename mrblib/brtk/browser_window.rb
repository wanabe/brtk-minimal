class Brtk
  class BrowserWindow < Base::Widget
    widget Gtk::ScrolledWindow, nil, nil
    def initialize(brtk)
      super
      widget.set_policy Gtk::PolicyType::AUTOMATIC, Gtk::PolicyType::AUTOMATIC

      add WebRenderer.new(brtk)
    end
  end
end
