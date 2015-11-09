class NewPredictionsScreenStylesheet < ApplicationStylesheet
  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end
  
  def image_url(st)
    st.image = image.resource('new_predictions.png')
    st.frame = :full
  end

  
   def back_button(st)
    st.frame = {t: 120, from_right: 200, width: 200, height: 50}
    st.text = "Back"
    st.background_color = color.clear
    st.color = color.clear
  end
  
    def go_button(st)
    st.frame = {t: 250, from_right: 0, width: 370, height: 130}
    st.text = "Predictions"
    st.background_color = color.clear
    st.color = color.clear
  end

end