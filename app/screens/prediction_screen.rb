class PredictionScreen < PM::Screen
  title ""
  stylesheet PredictionScreenStylesheet
  status_bar :none
  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    @image_url = append!(UIImageView, :image_url)
    find(@image_url).tag(:none)
    # # append UIButton, :go_button
    
    append(UIButton, :go_button).on(:touch) do |sender|
      # open AddPredictionScreen.new(nav_bar: false)
      if find!(:first).blank?
        @image_url.image = image.resource('add_prediction.png')
        find(@image_url).tag(:first)
        append_select
      end
    end
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open PredictionsScreen.new(nav_bar: false)
    end
    # @sample_image = append!(UIImageView, :sample_image)
    # @hello_world = append!(UILabel, :hello_world)
  end

  def append_select
    append(UIButton, :select_button).on(:touch) do |s|
      @image_url.image = image.resource('new_predictions.png')
      find(@image_url).tag(:second)
      append_other_select
    end
  end

  def append_other_select
    append(UIButton, :other_select_button).on(:touch) do |s|
      find(:select_button).off
      @image_url.image = image.resource('selected_new_predictions.png')
      find(@image_url).tag(:third)
      append_final_select
    end
  end

  def append_final_select
    append(UIButton, :final_select_button).on(:touch) do |s|
      find(:other_select_button).off
      @image_url.image = image.resource('achieved.png')
      find(@image_url).tag(:final)
    end
  end
end