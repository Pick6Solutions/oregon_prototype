class ChallengeScreen < PM::Screen
  title ""
  stylesheet ChallengeScreenStylesheet
  status_bar :none
  def on_load
    @image_url = append!(UIImageView, :image_url)
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open LeaderBoardScreen.new(nav_bar: false)
    end
  end
end