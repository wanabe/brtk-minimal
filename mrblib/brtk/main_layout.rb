class Brtk
  class MainLayout < Base::Layout
    widget Gtk::VBox, false, 0
    child :browser_window

    def expand?(other)
      other.is_a? BrowserWindow
    end

    def fill?(other)
      expand?(other)
    end
  end
end
