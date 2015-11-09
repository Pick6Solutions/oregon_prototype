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
    st.frame = {t: 500, from_right: 120, width: 150, height: 130}
    st.text = "Predictions"
    st.background_color = color.clear
    st.color = color.clear
  end
  
  def check_in_button(st)
    st.frame = {t: 280, from_right: 100, width: 160, height: 80}
    st.text = "Check In"
    st.background_color = color.clear
    st.color = color.clear
  end
  
  def reward_store_button(st)
    st.frame = {t: 570, from_right: 10, width: 80, height: 100}
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

  def sample_image(st)
    st.frame = :full
    st.image = image.resource('home_screen.png')

    # an example of using the view directly
    st.view.contentMode = UIViewContentModeScaleAspectFit
  end

end
