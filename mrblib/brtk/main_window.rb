class Brtk
  class MainWindow < Base::Widget
    widget Gtk::Window, Gtk::WindowType::TOPLEVEL
    child :main_layout

    def setup
      widget.set_default_size 1000, 600
    end

    def run
      widget.show_all
    end

    def on_destroy
      Gtk.main_quit
    end
  end
end
