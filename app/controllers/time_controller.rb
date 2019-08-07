# frozen_string_literal: true

class TimeController < ApplicationController
  def current
    render json: { 'currentTime': Time.current.strftime('%Y-%m-%d %H:%M:%S') }
  end
end
