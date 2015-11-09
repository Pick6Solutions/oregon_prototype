class PredictionScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.black
  end
  
  def image_url(st)
    st.frame = :full
    st.image = image.resource('prediction_screen.png')
    st.content_mode = UIViewContentModeScaleAspectFill
  end

  def go_button(st)
    st.frame = 'a0:l8'
    st.text = ""
    st.background_color = color.clear
  end
  
  def back_button(st)
    st.frame ={fl: 0 , t: 0, w: :quarter, h: 100}
    st.text = ""
    st.background_color = color.clear
  end

  def select_button(st)
    st.frame = 'c9:j14'
    st.text = ""
    st.background_color = color.clear
  end

  def other_select_button(st)
    st.frame = 'f5:l7'
    st.text = ""
    st.background_color = color.clear
  end

  def final_select_button(st)
    st.frame = 'e6:h11'
    st.text = ""
    st.background_color = color.clear
  end

end
