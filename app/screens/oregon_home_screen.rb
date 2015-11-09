class OregonHomeScreen < PM::Screen
  title ""
  stylesheet OregonHomeScreenStylesheet
  status_bar :none
  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    @image_url = append!(UIButton, :image_url).on(:touch) do |sender|
      vc = OregonLoadingScreen.new(nav_bar: false)
      vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
      find.screen.presentViewController(vc, animated: true, completion: nil)
    end
  end
end