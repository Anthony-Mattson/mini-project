require_relative './spec_helper.rb'
require_relative '../mini-project.rb'

def unittest_homepage_valid
    time1 = 'Nov 11 18:05'
    valid_response = "My name is Anthony and the time is #{time1}"
    assert_true(home_page(time1), valid_response)
  end
  
  def unittest_homepage_invalid
    time1 = 'Nov 11 18:05'
    time2 = 'Nov 12 15:05'
    valid_response = "My name is Anthony and the time is #{time1}"
    assert_false(home_page(time2), valid_response)
  end