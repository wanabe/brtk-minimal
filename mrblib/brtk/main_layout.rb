class Brtk
  class MainLayout < Base::Layout
    widget Gtk::VBox, false, 0
    child :browser_window
  end
end
