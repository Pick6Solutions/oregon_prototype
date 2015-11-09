class OregonHomeScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end

  def hello_world(st)
    st.frame = {t: 100, w: 200, h: 18, centered: :horizontal}
    st.text_alignment = :center
    st.color = color.battleship_gray
    st.font = font.medium
    st.text = 'Hello World'
  end
  
  def image_url(st)
    st.image = image.resource('oregon_home_screen.png')
    st.frame = :full
    st.background_color = color.light_gray
  end

  def go_button(st)
    st.frame = {t: 20, from_right: 10, width: 200, height: 50}
    st.text = ""
    st.background_color = color.clear
    st.color = color.white
  end

end