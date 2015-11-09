class HomeScreen < PM::Screen
  title ""
  stylesheet HomeScreenStylesheet
  status_bar :none
  def on_load
    find.screen.navigationController.navigationBar.subviews.objectAtIndex(0).setAlpha(0.0)

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
