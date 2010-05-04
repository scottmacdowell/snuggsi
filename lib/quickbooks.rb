module Snuggsi
  class Quickbooks

    def initialize
      'Initializing Quickbooks'
    end

    def process
      puts 'processing'
      process_customers
      process_orders
      invoice
      puts 'I\'m done!'
    end
  
    def process_customers
      puts 'Processing Customers'
    end
  
    def process_orders
      puts 'Processing Orders'
    end
  
    def invoice
      puts 'Processing Invoice'
    end
  
#    def this_is_new
#      puts 'I am a great programmer'
#    end

    def so_this_is_why
      puts 'I am a great programmer'
    end
 
  end
  
end