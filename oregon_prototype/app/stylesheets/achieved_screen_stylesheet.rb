class AchievedScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end
  
  def image_url(st)
    st.image = image.resource('achieved.png')
    st.frame = :full
  end
  
      def go_button(st)
    st.frame = {t: 330, from_right: 120, width: 150, height: 130}
    st.text = "Predictions"
    st.background_color = color.clear
    st.color = color.clear
  end

  
   def back_button(st)
    st.frame = {t: 20, from_right: 200, width: 200, height: 50}
    st.text = "Back"
    st.background_color = color.clear
    st.color = color.clear
  end

end