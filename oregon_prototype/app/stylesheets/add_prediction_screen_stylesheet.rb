class AddPredictionScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end
  
  def image_url(st)
    st.image = image.resource('add_prediction.png')
    st.frame = :full
  end

  
   def back_button(st)
    st.frame = {t: 20, from_right: 200, width: 200, height: 50}
    st.text = "Back"
    st.background_color = color.clear
    st.color = color.clear
  end
  
      def go_button(st)
    st.frame = {t: 380, from_right: 100, width: 160, height: 160}
    st.text = "Predictions"
    st.background_color = color.clear
    st.color = color.clear
  end

end