class SelectedNewPredictionsScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.black
  end
  
  def image_url(st)
    st.image = image.resource('selected_new_predictions.png')
    st.frame = :full
    st.content_mode = UIViewContentModeScaleAspectFill
  end
  
  def go_button(st)
    st.frame = 'd8:i11'
    st.text = ""
    st.background_color = color.clear
  end

  def back_button(st)
    st.frame = 'a1:c2'
    st.text = ""
    st.background_color = color.clear
  end

end