class ChallengeScreen < PM::Screen
  stylesheet ChallengeScreenStylesheet

  def on_load
    @image_url = append!(UIImageView, :image_url)
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open LeaderBoardScreen.new(nav_bar: false)
    end
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end