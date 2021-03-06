class OregonLoadingScreen < PM::Screen
  title ""
  stylesheet OregonLoadingScreenStylesheet
  status_bar :none
  
  def on_load
    @image_url = append!(UIImageView, :image_url)
    
    app.after 2 {
      open HomeScreen.new(nav_bar: true)   
    }
  end
end