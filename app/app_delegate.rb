class AppDelegate < PM::Delegate
  include CDQ # Remove this if you aren't using CDQ
  status_bar :none
  # status_bar :light, {animation: :fade}

  # Without this, settings in StandardAppearance will not be correctly applied
  # Remove this if you aren't using StandardAppearance
  ApplicationStylesheet.new(nil).application_setup

  def on_load(app, options)
    cdq.setup # Remove this if you aren't using CDQ
    open OregonHomeScreen.new(nav_bar: false)
  end
end
