describe 'install' do
  # To Do: Blocked on https://github.com/appium/appium/issues/3032
  def pkg
    'io.appium.android.apis'
  end

  def installed
    is_installed?(pkg).must_equal true
  end

  def not_installed
    is_installed?(pkg).must_equal false
  end

  t 'install/uninstall/launch' do
    skip # no way to launch apk after it's uninstalled/installed
    # blocked on: https://github.com/appium/appium/issues/2969
    installed
    remove 'io.appium.android.apis'
    not_installed
    install caps[:app]
    installed
    launch
  end
end