class RewardStoreScreen < PM::Screen
  stylesheet RewardStoreScreenStylesheet

  def on_load
    # set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    # set_nav_bar_button :right, title: "Right", action: :nav_right_button
    @image_url = append!(UIImageView, :image_url)
    # # append UIButton, :go_button
    
    append(UIButton, :go_button).on(:touch) do |sender|
      open RewardScreen.new(nav_bar: false)
    end
    
    append(UIButton, :back_button).on(:touch) do |sender|
      open CheckInScreen.new(nav_bar: false)
    end
    
    # append(UIButton, :coupon_button).on(:touch) do |sender|
    #   open CouponScreen.new(nav_bar: true)
    # end
    # @sample_image = append!(UIImageView, :sample_image)
    # @hello_world = append!(UILabel, :hello_world)
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end