class Brtk
  class MainLayout < Base::Layout
    widget Gtk::Box, Gtk::Orientation::VERTICAL, 0
    child :browser_window
  end
end
