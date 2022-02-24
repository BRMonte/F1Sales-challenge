require_relative './data_processor'
require "httparty"
require 'csv'

class RecreateLead
  include HTTParty
  base_uri 'http://httpbin.org'

  def self.recreate_lead(body)
    params = { body: body }
    response = self.post("/post", params).parsed_response
    return response
  end
end

# p hashable_csv_data('lost-leads.csv').first

data = hashable_csv_data('lost-leads.csv')
data.each do |d|
  p response = RecreateLead.recreate_lead(d)
end
