class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
      client = IEX::Api::Client.new(
      publishable_token: 'Tpk_4629caead17148efa3946af5f89092ea',
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
    client.price(ticker_symbol)
  end

end
