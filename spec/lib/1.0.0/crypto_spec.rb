require_relative './../../spec_helper'

RSpec.describe AlphaVantageRb::Crypto do
  context "#new" do
    it "create a new crypto without client" do
      stock = AlphaVantageRb::Crypto
        .new(symbol: "BTC", key: @api_key, market: "DKK")
      expect(stock.class).to eq AlphaVantageRb::Crypto
    end

    it "create a new stock from client" do
      crypto = @client.crypto symbol: "BTC", market: "DKK"
      expect(crypto.class).to eq AlphaVantageRb::Crypto
    end

    it "can change datatype" do
      bool = []
      stock = @client.crypto symbol: "BTC", market: "DKK"
      bool << stock.datatype
      begin
        stock.datatype = "ciao"
      rescue AlphaVantageRb::Error => e
        bool << "error"
      end
      stock.datatype = "csv"
      bool << stock.datatype
      stock.datatype = "json"
      expect(bool).to eq ["json", "error", "csv"]
    end

    it "can create a new timeseries from stock" do
      stock = @client.crypto symbol: "BTC", market: "DKK"
      timeseries = stock.timeseries
      expect(timeseries.class).to eq AlphaVantageRb::CryptoTimeseries
    end

    it "can check its rating" do
      stock = @client.crypto symbol: "BTC", market: "DKK"
      rating = stock.rating
      expect(rating.symbol).to eq "BTC"
    end
  end
end
