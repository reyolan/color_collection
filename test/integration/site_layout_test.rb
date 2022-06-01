require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'main layout links' do
    get root_path
    assert_response :success
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', colors_path, count: 2
    assert_select 'a[href=?]', new_color_path, count: 2
  end
end
