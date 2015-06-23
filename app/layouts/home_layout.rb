class HomeLayout < MK::Layout

  def layout
    root :task do
      add UILabel, :notes
    end
  end

end
