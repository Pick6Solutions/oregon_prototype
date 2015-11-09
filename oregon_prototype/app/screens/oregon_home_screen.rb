class OregonHomeScreen < PM::Screen
  stylesheet OregonHomeScreenStylesheet
  status_bar :none
  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    @image_url = append!(UIImageView, :image_url)
    # # append UIButton, :go_button
    
    # app.after 2 {
    #   open OregonHomeScreen.new(nav_bar: true)   
    # }
    
    append(UIButton, :go_button).on(:touch) do |sender|
      open OregonLoadingScreen.new(nav_bar: false)
    end
    # @sample_image = append!(UIImageView, :sample_image)
    # @hello_world = append!(UILabel, :hello_world)
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end