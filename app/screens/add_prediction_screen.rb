class AddPredictionScreen < PM::Screen
  stylesheet AddPredictionScreenStylesheet
  status_bar :none
  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    @image_url = append!(UIImageView, :image_url)
    # # append UIButton, :go_button
    
    append(UIButton, :go_button).on(:touch) do |sender|
      open NewPredictionsScreen.new(nav_bar: false)
    end
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open CheckInScreen.new(nav_bar: false)
    end
    
  end
end