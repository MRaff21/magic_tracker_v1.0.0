# app/services/scryfall_service.rb
require 'net/http'
require 'json'

class ScryfallService
  SCRYFALL_API_BASE_URL = 'https://api.scryfall.com'

  def self.fetch_card_data_by_name(card_name)
    encoded_card_name  = URI.encode_www_form_component(card_name)
    url = URI("#{SCRYFALL_API_BASE_URL}/cards/named?fuzzy=#{encoded_card_name}")
    response = Net::HTTP.get(url)
    JSON.parse(response)
    
  end

  def self.search_cards(query)
    encoded_query = URI.encode_www_form_component(query)
    url = URI("#{SCRYFALL_API_BASE_URL}/cards/search?q=#{encoded_query}")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  end

end




