# frozen_string_literal: true

require 'test_helper'

class TimeControllerTest < ActionDispatch::IntegrationTest
  test 'response is successful' do
    get '/time/current'

    assert_response :success
  end

  test "'Content-Type' header contains 'application/json'" do
    get '/time/current'

    assert_match %r{application\/json}, response.header['Content-Type']
  end

  test "'currentTime' value in JSON response is current time UTC" do
    Timecop.freeze
    get '/time/current'

    current_time = Time.current
    parsed_response = JSON.parse(response.body)

    assert_equal current_time.strftime('%Y-%m-%d %H:%M:%S'), parsed_response['currentTime']

    Timecop.return
  end
end
