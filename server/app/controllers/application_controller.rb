# require 'json_web_token'
class ApplicationController < ActionController::API
  include UsersHelper
  include SessionsHelper
  include ActionController::Cookies
end
