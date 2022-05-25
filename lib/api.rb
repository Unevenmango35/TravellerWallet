require 'pry'

class API 

    def self.get_rate
        url ="https://api.exchangerate-api.com/v4/latest/USD"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)

        hash["rates"].each do |currency_hash|
            currency = Currency.new
            currency.currency_code = currency_hash[0]
            currency.rate = currency_hash[1]
        end
    end

    def self.date
        url ="https://api.exchangerate-api.com/v4/latest/USD"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        pry.binding

        puts hash["date"]
    end

end
