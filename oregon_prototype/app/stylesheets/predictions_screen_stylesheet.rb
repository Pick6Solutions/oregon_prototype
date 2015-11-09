class PredictionsScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end
  
  def image_url(st)
    st.frame = :full
    st.image = image.resource('predictions_screen.png')
  end


  def go_button(st)
    st.frame = {t: 160, from_right: 0, width: 370, height: 75}
    st.text = "Pick A Prediction"
    st.background_color = color.clear
    st.color = color.clear
  end
  
  def back_button(st)
    st.frame = {t: 20, from_right: 200, width: 200, height: 50}
    st.text = "Back"
    st.background_color = color.clear
    st.color = color.clear
  end

  def sample_image(st)
    st.frame = {left: 20, below_prev: 10, from_right: 20, from_bottom: 20}
    st.background_color = color.gray

    # an example of using the view directly
    st.view.contentMode = UIViewContentModeScaleAspectFit
  end

end
