class PredictionsScreen < PM::Screen
  title ""
  stylesheet PredictionsScreenStylesheet
  status_bar :none
  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    @image_url = append!(UIImageView, :image_url)
    find(@image_url).tag(:none)
    # # append UIButton, :go_button
    
    append(UIButton, :go_button).on(:touch) do |sender|
      # open FirstPredictionScreen.new(nav_bar: false)
      if find!(:first).blank?
        @image_url.image = image.resource('1st_prediction.png')
        find(@image_url).tag(:first)
        find(sender).frame = 'f5:l6'
      else
        @image_url.image = image.resource('2nd_prediction.png')
        find(@image_url).tag(:second)
        append_select
      end
    end
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open CheckInScreen.new(nav_bar: false)
    end
    # @sample_image = append!(UIImageView, :sample_image)
    # @hello_world = append!(UILabel, :hello_world)
  end

  def append_select
    append(UIButton, :select_button).on(:touch) do |s|
      open PredictionScreen.new
    end
  end
end