require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template "static_pages/home"
    #searchs for this particular link
    assert_select "a[href=?]", root_path, count: 1
  end

end
