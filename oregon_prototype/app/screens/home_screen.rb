class HomeScreen < PM::Screen
  # title "Your title here"
  stylesheet HomeScreenStylesheet
  status_bar :none
  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    # @image_url = append!(UITextField, :image_url)
    # append UIButton, :go_button, action: :go_to_player_pick
    @sample_image = append!(UIImageView, :sample_image)
    append(UIButton, :go_button).on(:touch) do |sender|
      open PredictionsScreen.new(nav_bar: false)
    end
    
    append(UIButton, :reward_store_button).on(:touch) do |sender|
      open RewardStoreScreen.new(nav_bar: false)
    end
    
    append(UIButton, :check_in_button).on(:touch) do |sender|
      open CheckInScreen.new(nav_bar: false)
    end
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open OregonHomeScreen.new(nav_bar: false)
    end
  end
end
