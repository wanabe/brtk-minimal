class Brtk
  class MainWindow < Base::Widget
    widget Gtk::Window, Gtk::WindowType::TOPLEVEL
    def initialize(brtk)
      super
      widget.set_default_size 1000, 600
      add MainLayout.new(brtk)

      widget.signal_connect("destroy") do |*o|
        Gtk.main_quit
      end
      widget.show_all
    end
  end
end
