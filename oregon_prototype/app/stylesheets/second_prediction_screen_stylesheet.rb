class SecondPredictionScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end
  
  def image_url(st)
    st.frame = :full
    st.image = image.resource('2nd_prediction.png')
  end

  def go_button(st)
    st.frame = {t: 515, from_right: 0, width: 375, height: 130}
    st.text = "All Predications"
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
