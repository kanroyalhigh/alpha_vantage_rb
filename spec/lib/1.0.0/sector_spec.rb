require_relative './../../spec_helper'

RSpec.describe AlphaVantageRb::Sector do
  context "#new" do
    it "create a new sector without client" do
      exchange = AlphaVantageRb::Sector.new key: @api_key
      expect(exchange.class).to eq AlphaVantageRb::Sector
    end

    it "create a new sector with client" do
      exchange = @client.sector
      expect(exchange.class).to eq AlphaVantageRb::Sector
    end

    it "has several parameters" do
      exchange = @client.sector
      bool = []
      bool << exchange.information.is_a?(String)
      bool << exchange.last_refreshed.is_a?(String)
      bool << exchange.output.is_a?(Hash)
      bool << exchange.real_time_performance.is_a?(Hash)
      bool << exchange.one_day_performance.is_a?(Hash)
      bool << exchange.five_day_performance.is_a?(Hash)
      bool << exchange.one_month_performance.is_a?(Hash)
      bool << exchange.three_month_performance.is_a?(Hash)
      bool << exchange.year_to_date_performance.is_a?(Hash)
      bool << exchange.one_year_performance.is_a?(Hash)
      bool << exchange.three_year_performance.is_a?(Hash)
      bool << exchange.five_year_performance.is_a?(Hash)
      bool << exchange.ten_year_performance.is_a?(Hash)
      expect(bool.all?{|e| e}).to eq true
    end

    # it "cannot retrieve with wrong key" do
    #   error = false
    #   begin
    #     stock = AlphaVantageRb::Sector.new key:"wrong_key"
    #   rescue AlphaVantageRb::Error => e
    #     error = true
    #   end
    #   expect(error).to eq true
    # end
  end
end
