module Onecloud
  # Account info
  module Customer
    # Get current balance
    def balance
      get('customer/balance')
    end

    # Account info
    def account
      get('account')
    end
  end
end
