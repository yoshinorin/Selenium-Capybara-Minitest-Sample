# coding: utf-8
require '../test_helper'

class SearchTest < Minitest::Capybara::Test

  def test_search_myblog
    visit "/"
    find_by_id('lst-ib').send_keys('YoshinoriN in Hexo')
    find_by_id('lst-ib').native.send_keys(:return)
    assert_content "https://yoshinorin.net/"

    sleep 5
  end
end
