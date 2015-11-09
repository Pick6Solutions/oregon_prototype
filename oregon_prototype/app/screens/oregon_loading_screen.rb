class OregonLoadingScreen < PM::Screen
  stylesheet OregonLoadingScreenStylesheet
  status_bar :none
  def on_load
    @image_url = append!(UIImageView, :image_url)
    
    app.after 2 {
      open HomeScreen.new(nav_bar: false)   
    }
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end