class RewardStoreScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.red
  end

  def hello_world(st)
    st.frame = {t: 100, w: 200, h: 18, centered: :horizontal}
    st.text_alignment = :center
    st.color = color.battleship_gray
    st.font = font.medium
    st.text = 'Hello World'
  end
  
  def image_url(st)
    st.frame = :full
    st.image = image.resource('reward_store.png')
  end

  def go_button(st)
    st.frame = {t: 180, from_right: 0, width: 180, height: 180}
    st.text = "Reward"
    st.background_color = color.clear
    st.color = color.clear
  end

  def back_button(st)
    st.frame = {t:0, from_right: 280, width: 150, height: 70}
    st.text = "Back"
    st.background_color = color.clear
    st.color = color.clear
  end

end
