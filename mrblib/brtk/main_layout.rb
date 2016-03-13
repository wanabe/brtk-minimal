class Brtk
  class MainLayout < Base::Layout
    def initialize(uri = nil)
      setup Gtk::Box, Gtk::Orientation::VERTICAL, 0

      @browser_window = BrowserWindow.new(uri)
      parts.each do |part|
        pack_start part, true, true, 2
      end
    end

    def parts
      [@browser_window]
    end
  end
end
