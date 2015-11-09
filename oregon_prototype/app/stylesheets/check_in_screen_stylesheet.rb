class CheckInScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.black
  end
  
  def image_url(st)
    st.image = image.resource('welcome.png')
    st.frame = :full
  end

  def go_button(st)
    st.frame = 'd12:i17'
    st.text = ""
    st.background_color = color.clear
  end

  def check_in_button(st)
    st.frame = 'd7:i9'
    st.text = ""
    st.background_color = color.clear
  end
  
  def reward_store_button(st)
    st.frame = 'j14:l17'
    st.text = ""
    st.background_color = color.clear
  end
   
   def back_button(st)
    st.frame ={fl: 0 , t: 0, w: :quarter, h: 100}
    st.text = ""
    st.background_color = color.clear
   end
  
  def leader_button(st)
    st.frame = 'a15:c17'
    st.text = ""
    st.background_color = color.clear
  end

end
