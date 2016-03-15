class Brtk
  class MainLayout < Base::Layout
    widget Gtk::Box, Gtk::Orientation::VERTICAL, 0
    def initialize(brtk)
      super

      @browser_window = BrowserWindow.new(brtk)
      parts.each do |part|
        pack_start part, true, true, 2
      end
    end

    def parts
      [@browser_window]
    end
  end
end
