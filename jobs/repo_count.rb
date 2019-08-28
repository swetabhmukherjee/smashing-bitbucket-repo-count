#!/usr/bin/env ruby
require 'open-uri'
require 'json'
require 'net/http'
require 'uri'


SCHEDULER.every '1m', :first_in => 0 do |job|
  # code for API is at https://github.com/guggero/aare-server
  uri = URI.parse("https://api.bitbucket.org/2.0/repositories/testformygate")
  request = Net::HTTP::Get.new(uri)
  request.basic_auth("swetabh.libra@gmail.com", "swetabh@1998")

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

  parsed  = JSON.parse(response.body)
  
  commit = "0"
  

    commit = parsed["size"]
    
    
  
  send_event('aare', { commit: commit })
end

