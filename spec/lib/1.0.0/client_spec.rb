require_relative './../../spec_helper'

RSpec.describe AlphaVantageRb::Client do
  context "#new" do
    it "create a new client" do
      client = AlphaVantageRb::Client.new key: @api_key
      expect(client.class).to eq AlphaVantageRb::Client
    end

    it "can change verbose" do
      bool = []
      bool << @client.verbose
      begin
        @client.verbose = "ciao"
      rescue AlphaVantageRb::Error => e
        bool << "error"
      end
      @client.verbose = true
      bool << @client.verbose
      @client.verbose = false
      expect(bool).to eq [false, "error", true]
    end

    it "can create a new stock from client" do
      stock = @client.stock symbol: "MSFT"
      expect(stock.class).to eq AlphaVantageRb::Stock
    end

    it "can search a new stock from client" do
      search = @client.search keywords: "MSFT"
      expect(search.stocks[0].stock.class).to eq AlphaVantageRb::Stock
    end

    it "can create a new exchange from client" do
      exchange = @client.exchange from: "USD", to: "DKK"
      expect(exchange.class).to eq AlphaVantageRb::Exchange
    end

    it "can create a new crypto from client" do
      crypto = @client.crypto symbol: "BTC", market: "DKK"
      expect(crypto.class).to eq AlphaVantageRb::Crypto
    end

    it "can create a new sector from client" do
      sector = @client.sector
      expect(sector.class).to eq AlphaVantageRb::Sector
    end
  end
end
