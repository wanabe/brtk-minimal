class Brtk
  class BrowserWindow < Base::Widget
    widget Gtk::ScrolledWindow, nil, nil
    child :web_renderer

    def initialize(brtk)
      super
      widget.set_policy Gtk::PolicyType::AUTOMATIC, Gtk::PolicyType::AUTOMATIC
    end
  end
end
