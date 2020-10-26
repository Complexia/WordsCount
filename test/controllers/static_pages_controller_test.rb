require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "WordsCount"
  end

  #Testing navigation and props (the stuff in provide)
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "WordsCount"
  end

end
