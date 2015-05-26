class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_schools
    url = "http://localhost:4000/auxiliar/joincics/show_schools"
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    # request["Accept"] = "application/vnd.api.akdemia.com+json; version=2"
    response = http.request(request)
    data = JSON.parse(response.body)
    return data
  end

  def get_students(school_id)
    url = "http://localhost:4000/auxiliar/joincics/#{school_id}/get_school_students"
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    # request["Accept"] = "application/vnd.api.akdemia.com+json; version=2"
    response = http.request(request)
    data = JSON.parse(response.body)
    return data
  end

end
