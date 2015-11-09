class CheckInScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end
  
  def image_url(st)
    st.image = image.resource('welcome.png')
    st.frame = :full
  end

 def go_button(st)
    st.frame = {t: 500, from_right: 110, width: 150, height: 130}
    st.text = "Predictions"
    st.background_color = color.clear
    st.color = color.clear
  end
  
   def reward_store_button(st)
    st.frame = {t: 570, from_right: 10, width: 80, height: 100}
    st.text = "Reward Store"
    st.background_color = color.clear
    st.color = color.clear
  end
  
  def leader_button(st)
    st.frame = {t: 570, from_right: 280, width: 100, height: 100}
    st.text = "Reward Store"
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
