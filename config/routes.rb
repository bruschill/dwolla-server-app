# frozen_string_literal: true

Rails.application.routes.draw do
  root to: proc { [404, {}, ['not found']] }
end
