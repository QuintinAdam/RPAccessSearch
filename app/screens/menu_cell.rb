class MenuCell < PM::TableViewCell
  # def menu_icon(icon)
  #     # Make the UILabel, but *only* if it doesn't exist yet.
  #     @icon ||= begin
  #       label = add UILabel.alloc.initWithFrame([[ 75, 30 ], [ 100, 30 ]])
  #       label.font = UIFont.fontWithName("Comic Sans", size:36.0)
  #       label.backgroundColor = UIColor.blueColor # beautiful
  #       label
  #     end
  #     # Now set the label text, regardless of if it's a new cell
  #     # or an old one, freshly dequeued.
  #     @icon.text = "Released #{year}"
  #     @icon
  #   end

  #   def price=(price)
  #     @price_view ||= add UILabel.alloc.initWithFrame([[ 200, 30 ], [ 100, 30 ]])
  #     @price_view.text = "$#{price}"
  #   end
end
