class LeaderBoardScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.black
  end

  def image_url(st)
    st.image = image.resource('leaderboard.png')
    st.frame = :full
    st.content_mode = UIViewContentModeScaleAspectFill
  end

  def go_button(st)
    st.frame = 'd13:i17'
    st.text = ""
    st.background_color = color.clear
  end

  def back_button(st)
    st.frame ={fl: 0 , t: 0, w: :quarter, h: 100}
    st.text = ""
    st.background_color = color.clear
  end

end
