class OregonLoadingScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.black
  end
  
  def image_url(st)
    st.image = image.resource('Oregon_Prototype_Screens.png')
    st.content_mode = UIViewContentModeScaleAspectFill
    st.frame = {w: device.width, h: device.height}
  end

end