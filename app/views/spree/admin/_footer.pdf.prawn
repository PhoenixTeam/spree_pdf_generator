bounding_box [bounds.left, bounds.bottom + 18], width: bounds.width do
  data = [
    [Spree.t(:footer_left), Spree.t(:footer_center), Spree.t(:footer_right)]
  ]

  table(data)
end
