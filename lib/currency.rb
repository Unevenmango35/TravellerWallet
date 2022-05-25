class Currency
    attr_accessor :currency_code, :rate

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def self.display_list
        puts "list"
    end

    def self.display_list_of_current_rates
        #access all the rate
        #print each one out
        Currency.all.each do |currency|
        puts "#{currency.currency_code}: #{currency.rate}"
        end
    end

    def self.ask_user_for_certain_rates
        puts "Enter the currency code you'd like to see the rate."
    end

    def self.see_us_exchange
        puts "us"
    end

    def self.see_chosen_exchange
        puts "chosen"
    end



end
