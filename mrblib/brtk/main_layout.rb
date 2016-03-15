class Brtk
  class MainLayout < Base::Layout
    def initialize(brtk)
      super
      setup Gtk::Box, Gtk::Orientation::VERTICAL, 0

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
