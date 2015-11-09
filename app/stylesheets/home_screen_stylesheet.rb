class HomeScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.green
    # st.frame = {w: :full, h: :full}
    # st.image = image.resource('sample_image.JPG')
    # st.content_mode = three_point_five_inch? ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit
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

  def sample_image(st)
    st.frame = :full
    st.image = image.resource('home_screen.png')

    # an example of using the view directly
    st.view.contentMode = UIViewContentModeScaleAspectFit
  end

end
