class CLI 

    def start
        puts "Welcome to Tracveller Wallet!"
        API.get_rate
        self.intro
        self.menu
    end

    def intro
        puts "Select a number from 1 - 6"
        puts "---------------------------"
        puts ""
        puts (" 1. ") + "See the complete list of all supported currencies"
        puts (" 2. ") + "See current rates of all the world currency"
        puts (" 3. ") + "See current exchange rate of certain currency"
        puts (" 4. ") + "See US exchanges that trade in your chosen currency"
        puts (" 5. ") + "See chosen currency exchanges that trade in US dollars"
        puts (" 6. ") + "Exit"
        puts ""
        puts ""
    end

    def menu
        input = gets.chomp
        while input
        case input
    when "1"
        Currency.display_list
    when "2"
        Currency.display_list_of_current_rates
      when "3"
        Currency.ask_user_for_certain_rates
      when "4"
        Currency.see_us_exchange
      when "5"
        Currency.see_chosen_exchange
      when "6"
        puts "Goodbye! Thank you for using this app."
        break
        else
        puts "That option does not exist. Please select a number from 1 - 6"
      end
    end

    
end



